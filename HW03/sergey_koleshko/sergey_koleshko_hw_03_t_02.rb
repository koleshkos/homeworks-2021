logs = '10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290'

DATA = %r{\d{1,31}/.+/\d{1,2021}:\d+:\d+:\d+ \+\d+}.freeze
FROM = /^\d{0,255}\.\d{0,255}\.\d{0,255}\.\d{0,255}/.freeze
TO = %r{/\w+/\d+/\w+}.freeze

def formatted_requests(logs)
  logs.each_line.select { |line| line.match(/POST/) }.map do |l|
    "#{l.scan(DATA)[0]} FROM: #{l.scan(FROM)[0][0]} TO: #{l.scan(TO)[0].to_s.upcase}"
  end
end

p formatted_requests(logs)

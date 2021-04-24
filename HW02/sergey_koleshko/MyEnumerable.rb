module MyEnumerable
    refine Integer do
        def my_times
            for i in 0...self
                yield(i)
            end
        end

        def my_upto(count)
            for i in self...count
                yield(i)
            end
        end
    end

    refine Array do
        def my_each
            for i in 0...self.length()
                yield(self[i])
            end
        end

        def my_map
            temp = []
            for i in 0...self.length()
                temp << yield(self[i])
            end
            temp
        end

        def my_select
            temp = []
            for i in 0...self.length()
                if yield(self[i]) then
                    temp << self[i]
                end
            end
            temp
        end
    end
end

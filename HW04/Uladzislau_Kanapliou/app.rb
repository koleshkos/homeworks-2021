# frozen_string_literal: true

require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/notification'

module App
  def self.run
    student = Student.new('John', 'Doe')
    mentor = Mentor.new('Jack', 'Gonsales')

    # mentor add new homework
    homework = mentor.add_homework('HW03', 'description homework', student)
    # student see notification about new homework
    student.notifications
    # student mark as read all notifications
    student.mark_as_read!
    # mentor subscribe to student
    mentor.subscribe_to!(student)
    # student take to work homework
    student.homeworks
    student.to_work!(homework)
    student.homeworks
    # mentor see notification about homework to work
    mentor.notifications
    # mentor mark as read all notifications
    mentor.mark_as_read!
    mentor.notifications
    # student can see homeworks
    student.homeworks
    # student add answer to homework
    student.add_answer!(homework, 'new students answer')
    # student sent to check homework
    student.to_check!(homework)
    # mentor see notification about homework to check
    mentor.notifications
    # mentor reject homework
    mentor.reject_to_work!(homework)
    # student see notification about homework was reject
    student.notifications
    # ---
    student.add_answer!(homework, 'new students answer_after reject')
    student.to_check!(homework)
    # ---
    # mentor accept homework
    mentor.accept!(homework)
    # student see notification about homework was accept
    student.notifications
  end
end

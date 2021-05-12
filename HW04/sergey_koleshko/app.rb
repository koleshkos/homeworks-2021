require './mentor.rb'
require './student.rb'
require './homework.rb'

student = Student.new(name:'Joh', surname:'Doe')
mentor = Mentor.new(name:'Jack', surname:'Gonsales')

#homework = mentor.add_homework(title: 'HW03', description: 'description homework', student: student)
require 'pry'

class Classroom
  attr_reader :subject, :capacity, :students
  def initialize (subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end
  def add_student(student)
    @students << student
  end
  def yell_at_students
    uppercase_students = []
    @students.each do |name|
      uppercase_students << name.upcase
    end
    return uppercase_students
  end
  def over_capacity?
    @students.length > @capacity
  end
  def kick_out
    @students.shift
  end
end

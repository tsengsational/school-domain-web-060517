require 'pry-byebug'
# code here!
class School

  def roster
    @roster
  end

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    if @roster[grade].class == Array
      @roster[grade] << student
    else
    @roster[grade] = []
    @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade].sort!
      # binding.pry
    end
  end

end

# Pry.start

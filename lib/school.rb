# code here!

class School
  attr_accessor :roster

  def initialize(new_school)
    @school = new_school
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster[grade] # roster is empty
      # add key with array as value, and student in array
      @roster[grade] = [student]
    else # roster has at least one student
      #  push the student to the existing array
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.reduce({}) do |memo, (key, value)|
      memo[key] = value.sort
      memo
    end
  end
end

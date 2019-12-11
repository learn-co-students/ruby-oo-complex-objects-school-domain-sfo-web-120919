# code here!
require 'pry'

class School
    attr_accessor :roster, :grade
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # if there is no grade key, create grade key with array grade value
        # put the student in that empty array you created
        if !@roster[grade]
            @roster[grade] = [name]
        # there is a grade key, which means there is a grade array value
        # push the student into that grade array value
        else
            @roster[grade] << name
        end

    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = {}
        @roster.map {|k,v| sorted_roster[k] = v.sort}
        sorted_roster
        # binding.pry

    end 


end

school = School.new("Bayside High School")


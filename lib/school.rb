require 'pry'

class School
    attr_accessor :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
        if roster[grade]
            roster[grade].push(student)
        else 
            roster[grade] = []
            roster[grade].push(student)
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        new_roster = {}
        roster.each {|key, value| new_roster[key] = value.sort}
        return new_roster
    end
end
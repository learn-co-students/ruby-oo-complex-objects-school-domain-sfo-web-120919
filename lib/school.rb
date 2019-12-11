class School
    attr_accessor :roster
   
    def initialize(new_school)
        @school = new_school
        @roster =  {}
    end

    def add_student(student, grade)
        if !@roster[grade] # roster is empty
           @roster[grade] = [student]  #add key with array as value, and student in array

        else #roster has at least one student
            @roster[grade] << student #push the student to the existing key
        end
    
    end

    def grade(grade)
        @roster[grade] #use grade to get list of students in that grade
    end

    def sort
        #for each grade, sort all names alpha
        @roster.reduce({}) do |memo, (key, value)|
            memo[key] = value.sort
            memo
        
        end   
            
    end
    
end
class School
    attr_accessor :roster
    def initialize(name)
        @roster = {}
        @school = name
    
    end
    

    def add_student(student,grade_num)
            if !@roster[grade_num] 
                @roster[grade_num] = [student]
            else
                @roster[grade_num] << student 
            end
        
    
    end


    def grade(grade)
        return @roster[grade]
    end

    def sort
        nh = {}
        @roster.each do |key,value|
            nh[key] = value.sort
        end
        nh

    end
end

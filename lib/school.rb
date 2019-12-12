class School
   
    attr_accessor :roster, :name, :school

    def initialize(school)
        @roster = {}
        @school = school
    end

    def add_student(name, grade)
          if @roster[grade]     # roster is empty 
             @roster[grade] << name        #add key with array as value, and student in array
          else   #roster has at least one student
            @roster[grade] = []
            @roster[grade] << name       #push the student to the existing key
          end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort 
        hash = Hash.new
        
        @roster.each do |k, v|
            hash[k] = v.sort 
        end
        hash
    end
    
end

class School
    def initialize(name)
        @school_name = name
        @roster = {}
        
    end
    def roster
        @roster
    end
    
    def add_student(name,grade_no)
        if !@roster[grade_no]
            @roster[grade_no] = [name]
        else
            @roster[grade_no] << name
        end
        @roster
    end

    def grade(num)
        @roster[num]
    end
    def sort
        # @roster.sort_by {|k,v| v.to_s}
        # @roster.to_h
        new_hash = {}
        @roster.each do |grade,names|
            new_hash[grade] = names.sort
        end
        new_hash
    end
    
end
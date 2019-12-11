class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
      end

      def add_student (student_name, grade)
        # if roster is empty, add grade as key with [student] as value
        if !@roster[grade]
            @roster[grade] = [student_name]
        
       # if there is a key for grade in roster, then push the student into that grade
        else        
           @roster[grade] << student_name
        end
      end

      def grade(student_grade)
        @roster[student_grade] 
      end

      def sort
        new_arr = {}
        roster.each do |grade, student|
        new_arr[grade] = student.sort
        end
        new_arr
      end


end


school = School.new("Bayside High School")
class School

    attr_reader :hours_in_school_day, :start_time, :student_names, :end_time

    def initialize(start_time, hours_in_school_day, student_names = [], end_time = '16:00')
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = student_names
        @end_time = end_time
    end

    def add_student_name(name)
        @student_names << name
    end
end
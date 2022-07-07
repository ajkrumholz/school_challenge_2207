require 'time'

class School

    attr_reader :hours_in_school_day, :start_time, :student_names

    def initialize(start_time, hours_in_school_day, student_names = [])
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = student_names

    end

    def add_student_name(name)
        @student_names << name
    end

    def is_full_time?
        @hours_in_school_day >= 4
    end

    def standard_student_names
        capitalized_names = []
        @student_names.each do |name|
            capitalized_names << name.capitalize
        end
        capitalized_names
    end

    def end_time
        "#{start_time.to_i + hours_in_school_day}:00"
    end
    
    def convert_end_time_to_clock_time
        time = Time.parse(end_time)
        time.strftime(("%l:%M")).strip
    end
end
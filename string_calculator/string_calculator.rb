class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        delimiter, value = self.check_for_delimiter(value)
        values = value.split(delimiter).map(&:to_i)
        self.check_for_negative_numbers(values)
        return values.sum
    end
    
    def self.check_for_delimiter(value)
        delimiter = /\\n|,/
        if value[0..1] == "//"
            delimiter = value[2...value.length-1].split('\n').first
            value = value.split(delimiter+'\n').last
        end
        [delimiter, value]
    end

    def self.check_for_negative_numbers(values)
        negative_values = values.map(&:to_i).select{|a| a < 0}
        raise "negative numbers not allowed: #{negative_values.join(',')}" if negative_values.length > 0
    end
end
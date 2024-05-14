class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        delimiter, value = self.check_for_delimiter(value)
        return value.split(delimiter).map(&:to_i).sum
    end
    
    def self.check_for_delimiter(value)
        delimiter = /\\n|,/
        if value[0..1] == "//"
            delimiter = value[2...value.length-1].split('\n').first
            value = value.split(delimiter+'\n').last
        end
        [delimiter, value]
    end
end
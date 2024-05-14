class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        if value[0..1] == "//"
            delimiter = value[2...value.length-1].split('\n').first
            return value.split(delimiter+'\n').last.split(delimiter).map(&:to_i).sum
        else
            return value.split(/\\n|,/).map(&:to_i).sum
        end
    end 
end
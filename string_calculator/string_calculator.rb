class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        return value.split(/\\n|,/).map(&:to_i).sum
    end 
end
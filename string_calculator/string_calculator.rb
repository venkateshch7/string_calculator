class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        return value.to_i
    end 
end
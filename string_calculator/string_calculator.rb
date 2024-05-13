class StringCalculator
    def self.calculate(value)
        return 0 if value.empty?
        if value.include? ","
            return value.split(",").map(&:to_i).sum
        else
            return value.to_i
        end
    end 
end
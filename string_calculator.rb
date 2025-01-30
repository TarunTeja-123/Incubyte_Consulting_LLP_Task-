
class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        if numbers.start_with?("//")
            delimiter, numbers = numbers.split("\n", 2)
            delimiter = delimiter[2..-1]
          else
            delimiter = ",|\n"  
        end
        numbers = numbers.gsub(/#{delimiter}/, ',')
        numbers.split(',').map(&:to_i).sum
    end    
end

  
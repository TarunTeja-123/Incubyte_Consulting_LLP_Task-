
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
        negative_numbers = numbers.split(',').select { |num| num.to_i < 0 }
        if negative_numbers.any?
          raise "negative numbers not allowed #{negative_numbers.join(', ')}"
        end
        numbers.split(',').map(&:to_i).sum
    end    
end

  
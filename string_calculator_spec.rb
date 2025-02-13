require_relative 'string_calculator'

describe StringCalculator do
  describe "adding" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end
  end

  it 'returns the number itself for a single number' do
    calculator = StringCalculator.new
    result = calculator.add("1")
    expect(result).to eq(1)
  end

  it 'returns the sum of multiple numbers' do
    calculator = StringCalculator.new
    result = calculator.add("1,5")
    expect(result).to eq(6)
  end

  it 'handles new line between numbers' do
    calculator = StringCalculator.new
    result = calculator.add("1\n2,3")
    expect(result).to eq(6)
  end

  it 'supports custom delimiters' do
    calculator = StringCalculator.new
    result = calculator.add("//;\n1;2")
    expect(result).to eq(3)
  end
  it 'throws an exception for negative numbers' do
    calculator = StringCalculator.new
    expect { calculator.add("-1,2,-3") }.to raise_error("negative numbers not allowed -1, -3")
  end
end
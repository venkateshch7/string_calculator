require './string_calculator/string_calculator'

RSpec.describe StringCalculator do
  context "when the input string is empty" do
    subject(:output) { described_class.calculate("") }
    
    it "should return 0" do
      expect(output).to eq(0)
    end

  end

  context "when the input string contains single value" do
    subject(:output) { described_class.calculate("3") }

    it "should return 3" do
      expect(output).to eq(3)
    end
  end

  context "when the input string contains 2 numbers" do
    subject(:output) { described_class.calculate("1,2") }

    it "should return 3" do
      expect(output).to eq(3)
    end
  end

  context "when the input string contains multiple numbers" do
    subject(:output) { described_class.calculate("1,2,3") }
    
    it "should return 5 when input is '1,2,3'" do
      expect(output).to eq(6)
    end

  end
end
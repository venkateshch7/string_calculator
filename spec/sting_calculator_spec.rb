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
end
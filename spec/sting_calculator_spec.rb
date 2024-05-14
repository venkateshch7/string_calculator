require './string_calculator/string_calculator'

RSpec.describe StringCalculator do
  subject(:output) { described_class.calculate(input) }
  let(:input) { '' }

  context 'when the input string is empty' do
    it 'should return 0' do
      expect(output).to eq(0)
    end
  end

  context 'when the input string contains single value' do
    let(:input) { '3' }

    it 'should return 3' do
      expect(output).to eq(3)
    end
  end

  context 'when the input string contains 2 numbers' do
    let(:input) { '1,2' }

    it 'should return 3' do
      expect(output).to eq(3)
    end
  end

  describe 'when the input string contains multiple numbers' do

    context 'when the input in is 1,2,3' do
      let(:input) { '1,2,3' }    
      
      it 'should return 5' do
        expect(output).to eq(6)
      end
    end

    context 'when the input in is 2,3,4,5' do
      let(:input) { '2,3,4,5' }
      
      it 'should return 14' do
        expect(output).to eq(14)
      end
    end
  end

  describe 'when the input string contains new line character between numbers' do
    
    context 'when the input string is 1\n2,3' do
      let(:input) { '1\n2,3' }    
      
      it 'should return 6' do
        expect(output).to eq(6)
      end
    end

    context 'when the input string is 12,3\n7' do
      let(:input) { '12,3\n7' }    
      
      it 'should return 22' do
        expect(output).to eq(22)
      end
    end
  end

  describe 'when the input string contains contains a delimiter' do
    
    context 'when the input in is //;\n1;2' do
      let(:input) { '//;\n1;2' }    
      
      it 'should return 3' do
        expect(output).to eq(3)
      end
    end
  end

  describe 'when the input string contains contains negative number' do
    
    context 'when the input in is //;\n1;-2' do
      let(:input) { '//;\n1;-2' }    
      
      it 'should return error' do
        expect{output}.to raise_error('negative numbers not allowed: -2')
      end
    end
  end

end
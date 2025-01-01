require 'spec_helper'

RSpec.describe StringCalculator, type: :model do
  describe '#add' do
    context 'returns the sum of two numbers' do
      it 'numbers in plain string' do
        result = StringCalculator.add("1,2")
        expect(result).to eq(3)
      end

      it 'number with delimiter' do
        result = StringCalculator.add("1\n,2")
        expect(result).to eq(3)
      end

      it 'number with another delimiter' do
        result = StringCalculator.add("//;\n1;2")
        expect(result).to eq(3)
      end

      it 'number with another delimiter' do
        result = StringCalculator.add("//;\n[1];2,4") 
        expect(result).to eq(7)
      end

      it 'number with negative number' do 
      expect { 
        StringCalculator.add("//;\n[1];2,-4")
      }.to raise("negative numbers not allowed -4")
      end
    end
  end
end

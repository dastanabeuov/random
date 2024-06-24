require 'rspec'
require_relative '../../lib/random_number_generator'

RSpec.describe RandomNumberGenerator do
  describe '#validate_input' do
    it 'returns true for valid input' do
      generator = RandomNumberGenerator.new(5, 10)
      expect(generator.validate_input).to eq(true)
    end

    it 'returns false for invalid input where count is greater than upper limit' do
      generator = RandomNumberGenerator.new(10, 5)
      expect(generator.validate_input).to eq(false)
    end

    it 'returns false for invalid input where count is zero or negative' do
      generator = RandomNumberGenerator.new(0, 10)
      expect(generator.validate_input).to eq(false)
    end

    it 'returns false for invalid input where upper limit is zero or negative' do
      generator = RandomNumberGenerator.new(5, 0)
      expect(generator.validate_input).to eq(false)
    end
  end

  describe '#generate_numbers' do
    it 'returns a sorted array of unique random numbers' do
      generator = RandomNumberGenerator.new(5, 10)
      numbers = generator.generate_numbers
      expect(numbers.size).to eq(5)
      expect(numbers.uniq.size).to eq(5)
      expect(numbers).to eq(numbers.sort)
    end

    it 'returns an empty array for invalid input' do
      generator = RandomNumberGenerator.new(10, 5)
      expect(generator.generate_numbers).to eq([])
    end
  end
end

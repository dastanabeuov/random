require 'rspec'
require_relative '../../lib/io_handler'

RSpec.describe IOHandler do
  describe '.get_input' do
    it 'receives input and returns an array of two integers' do
      allow(IOHandler).to receive(:gets).and_return('5', '10')
      expect(IOHandler.get_input).to eq([5, 10])
    end
  end

  describe '.display_numbers' do
    it 'prints each number in the array to the console' do
      numbers = [1, 2, 3, 4, 5]
      expect { IOHandler.display_numbers(numbers) }.to output("1\n2\n3\n4\n5\n").to_stdout
    end
  end

  describe '.display_error' do
    it 'prints an error message to the console' do
      expect { IOHandler.display_error }.to output("Убедитесь, что количество элементов меньше верхней границы и оба значения положительны.\n").to_stdout
    end
  end
end

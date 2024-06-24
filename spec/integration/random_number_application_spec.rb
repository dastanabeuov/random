require 'rspec'
require_relative '../../lib/random_number_application'
require_relative '../../lib/io_handler'
require_relative '../../lib/random_number_generator'

RSpec.describe RandomNumberApplication do
  describe '.run' do
    context 'with valid input' do
      it 'displays generated random numbers' do
        allow(IOHandler).to receive(:gets).and_return('5', '10')
        allow(IOHandler).to receive(:display_numbers)
        expect(IOHandler).to receive(:display_numbers).with(kind_of(Array))
        RandomNumberApplication.run
      end
    end

    context 'with invalid input' do
      it 'displays an error message' do
        allow(IOHandler).to receive(:gets).and_return('10', '5')
        allow(IOHandler).to receive(:display_error)
        expect(IOHandler).to receive(:display_error)
        RandomNumberApplication.run
      end
    end
  end
end

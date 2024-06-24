# frozen_string_literal: true

require_relative 'random_number_generator'
require_relative 'io_handler'

class RandomNumberApplication
  def self.run
    count, upper_limit = IOHandler.get_input
    generator = RandomNumberGenerator.new(count, upper_limit)
    numbers = generator.generate_numbers

    if numbers.empty?
      IOHandler.display_error
    else
      IOHandler.display_numbers(numbers)
    end
  end
end

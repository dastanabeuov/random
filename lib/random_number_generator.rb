# frozen_string_literal: true

class RandomNumberGenerator
  def initialize(count, upper_limit)
    @count = count
    @upper_limit = upper_limit
  end

  def validate_input
    @count.positive? && @upper_limit.positive? && @count < @upper_limit
  end

  def generate_numbers
    return [] unless validate_input

    (0...@upper_limit).to_a.sample(@count).sort
  end
end

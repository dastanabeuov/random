# frozen_string_literal: true

class IOHandler
  def self.get_input
    puts 'Введите количество случайных элементов:'
    count = gets.to_i
    puts 'Введите верхнюю границу диапазона (исключительно):'
    upper_limit = gets.to_i
    [count, upper_limit]
  end

  def self.display_numbers(numbers)
    numbers.each { |num| puts num }
  end

  def self.display_error
    puts 'Убедитесь, что количество элементов меньше верхней границы и оба значения положительны.'
  end
end

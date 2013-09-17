gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NewExercisesTest < Minitest::Test
  
  def test_pick_numbers_divisible_by_two_and_three
    numbers = (0..30)
    selected = []
    numbers.each do |number|
      if number % 2 == 0 && number % 3 ==0
        selected.push(number)
      end
    end
    assert_equal [0, 6, 12, 18, 24, 30], selected 
  end

end

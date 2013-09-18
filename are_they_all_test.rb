gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? { |number| number == 0 }
    refute all_zeros
  end

  def test_all_zeros

    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? { |number| number == 0 }
    assert all_zeros
  end

  def test_all_gone
    
    words = %w(gone gone gone gone gone gone gone)
    all_gone = words.all? { |word| word == 'gone' }
    assert all_gone
  end

  def test_not_all_gone
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = words.all? { |word| word == 'gone' }
    refute all_gone
  end

  def test_all_empty
    words = ["", "", "", "", ""]
    all_empty = words.all? { |word| word == '' }
    assert all_empty
  end

  def test_not_all_empty
    words = ["full", "", "", "", "", ""]
    all_empty = words.all? { |word| word == '' }
    refute all_empty
  end
end


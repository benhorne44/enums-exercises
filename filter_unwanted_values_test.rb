gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FilterUnwantedValuesTest < Minitest::Test
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      if number != 0
        filtered.push(number)
      end
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    letters = "all your base are belong to us".chars
    remaining = []
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    letters.each do |letter|
      next if vowels.include? letter
        remaining.push(letter)
    end
    assert_equal "ll r bs r blng t s", remaining.join
  end

  def test_remove_numbers_divisible_by_3
    numbers = (1..20)
    remaining = []
    numbers.each do |number|
      if number % 3 !=0
        remaining.push(number)
      end
    end
    expected = [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    assert_equal expected, remaining
  end

  def test_remove_words_with_more_than_three_letters
    words = %w(pill bad finger cat blue dog table red)
    remaining = []
    words.each do |word|
      next if word.length > 3
        remaining.push(word)
    end
    assert_equal %w(bad cat dog red), remaining
  end

  def test_remove_words_ending_in_e
    words = %w(are you strike thinking belt piece warble sing pipe)
    remaining = []
    words.each do |word|
      next if word.end_with? 'e'
      remaining.push(word)
    end
    assert_equal %w(you thinking belt sing), remaining
  end

  def test_remove_words_ending_in_ing
    words = %w(drought singing hat shoehorning purposeful)
    remaining = []
    words.each do |word|
      remaining.push(word) if word[-3..-1] != 'ing'
    end
    assert_equal %w(drought hat purposeful), remaining
  end
end


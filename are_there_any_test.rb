gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = numbers.any? { |number| number == 0 }
    assert has_zero
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = numbers.any? { |number| number == 0 }
    assert has_zero
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = numbers.any? { |number| number == 0 }
    refute has_zero
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = names.any? { |name| name == 'alice' }
    refute has_alice
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = names.any? { |name| name == 'alice' }
    assert has_alice
  end
end


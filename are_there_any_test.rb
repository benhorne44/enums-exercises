gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      next if number != 0     
        has_zero = true
    end
    assert has_zero
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    zeros = []
    numbers.each do |number|
      if number == 0
        zeros.push(number)
      end
    end
    if zeros.count > 1
      has_zero = true
    end
    assert has_zero
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    zeros = []
    numbers.each do |number|
      next if number != 0
        zeros.push(number)
    end
    has_zero = false if zeros = []
    refute has_zero
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = true
    names.each do |name|
      unless name == 'alice'
        has_alice = false
      end
    end
    refute has_alice
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = false
    names.each do |name|
      if name == 'alice'
        has_alice = true
      end
    end
    assert has_alice
  end
end


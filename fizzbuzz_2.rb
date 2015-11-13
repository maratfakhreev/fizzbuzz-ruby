class FizzBuzzTwo
  PERIOD = 15

  attr_accessor :result, :basis, :limit
  private :result, :basis, :limit

  def initialize(limit)
    @limit = limit
    @result = ""
    @basis = {
      3 => "fizz",
      5 => "buzz",
      6 => "fizz",
      9 => "fizz",
      10 => "buzz",
      12 => "fizz",
      15 => "fizzbuzz"
    }
  end

  def display_series
    (1..limit).each { |x| @result << "#{define_output(x)} " }
    result
  end

  private

  def define_output(x)
    basis[x] ? basis[x + PERIOD] = basis.delete(x) : x
  end
end

FizzBuzzTwo.new(1000).display_series

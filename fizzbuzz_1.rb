class FizzBuzzOne
  attr_accessor :result, :limit
  private :result, :limit

  def initialize(limit)
    @limit = limit
    @result = ""
  end

  def display_series
    (1..limit).each { |x| @result += "#{define_number(x)} " }
    puts result
    result
  end

  private

  def define_number(x)
    number = ""
    number += "fizz" if (x % 3).zero?
    number += "buzz" if (x % 5).zero?
    number != "" ?  number : x.to_s
  end
end

FizzBuzzOne.new(100).display_series

class FizzBuzzOnePointOne
  attr_accessor :result, :limit
  private :result, :limit

  def initialize(limit)
    @limit = limit
    @result = ""
  end

  def display_series
    (1..limit).each { |x| define_number(x) }
    puts result
    result
  end

  private

  def define_number(x)
    if x % 3 == 0 && x % 5 == 0
      @result << "fizzbuzz "
    elsif x % 3 == 0
      @result << "fizz "
    elsif x % 5 == 0
      @result << "buzz "
    else
      @result << "#{x} "
    end
  end
end

FizzBuzzOnePointOne.new(100).display_series

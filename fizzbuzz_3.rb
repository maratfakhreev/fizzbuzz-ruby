class FizzBuzzThree
  PERIOD = [3, 2, 1, 3, 1, 2, 3]
  PERIOD_SIZE = PERIOD.length

  attr_accessor :result, :limit
  private :result, :limit

  def initialize(limit)
    @limit = limit
    @result = ""
  end

  def display_series
    nextStep = PERIOD[0]
    j = 0

    for i in 1..limit
      if i == nextStep
        printFizzBuss(j)
        j = (j + 1) % PERIOD_SIZE
        nextStep = nextStep + PERIOD[j]
      else
        @result << "#{i} "
      end
    end

    result
  end

  private

  def printFizzBuss(j)
    if j == 1 || j == 4
      @result << "buzz "
    elsif j == 6
      @result << "fizzbuzz "
    else
      @result << "fizz "
    end
  end
end

FizzBuzzThree.new(1000).display_series

require_relative '../fizzbuzz_1'
require_relative '../fizzbuzz_1.1'
require_relative '../fizzbuzz_2'
require_relative '../fizzbuzz_3'

CORRECT_RESULT = "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz fizz 52 53 fizz buzz 56 fizz 58 59 fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz 73 74 fizzbuzz 76 77 fizz 79 buzz fizz 82 83 fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz "

describe "Fizzbuzz" do
  describe "solution one" do
    let(:fizzbuzz_result) { FizzBuzzOne.new(100).display_series }
    it "return correct series" do
      expect(fizzbuzz_result).to eq(CORRECT_RESULT)
    end
  end

  describe "solution one point one" do
    let(:fizzbuzz_result) { FizzBuzzOnePointOne.new(100).display_series }
    it "return correct series" do
      expect(fizzbuzz_result).to eq(CORRECT_RESULT)
    end
  end

  describe "solution two" do
    let(:fizzbuzz_result) { FizzBuzzTwo.new(100).display_series }
    it "return correct series" do
      expect(fizzbuzz_result).to eq(CORRECT_RESULT)
    end
  end

  describe "solution three" do
    let(:fizzbuzz_result) { FizzBuzzThree.new(100).display_series }
    it "return correct series" do
      expect(fizzbuzz_result).to eq(CORRECT_RESULT)
    end
  end
end

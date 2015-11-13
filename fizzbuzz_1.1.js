var FizzBuzzOnePointOne = (function() {
  function FizzBuzzOne(limit) {
    this.limit = limit;
    this.result = "";
  };

  FizzBuzzOnePointOne.prototype.displaySeries = function() {
    for (var i = 1; i <= this.limit; i++) {
      this.defineOutput(i);
    }
  };

  FizzBuzzOnePointOne.prototype.defineOutput = function(x) {
    if (x % 3 === 0 && x % 5 === 0) {
      this.result += "fizzbuzz ";
    }
    else if (x % 3 === 0) {
      this.result += "fizz ";
    }
    else if (x % 5 === 0) {
      this.result += "buzz ";
    }
    else {
      this.result += x + " ";
    }
  };

  return FizzBuzzOne;
})();

fizzbuzz = new FizzBuzzOnePointOne(10000000);
fizzbuzz.displaySeries();

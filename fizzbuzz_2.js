var FizzBuzzTwo = (function() {
  var PERIOD = 15;
  var basis = {
    3: "fizz ",
    5: "buzz ",
    6: "fizz ",
    9: "fizz ",
    10: "buzz ",
    12: "fizz ",
    15: "fizzbuzz "
  };

  function FizzBuzzTwo(limit) {
    this.limit = limit;
    this.result = "";
  };

  FizzBuzzTwo.prototype.displaySeries = function() {
    for (var i = 1; i <= this.limit; i++) {
      this.result += this.defineOutput(i);
    }
    // console.log(this.result);
  };

  FizzBuzzTwo.prototype.defineOutput = function(x) {
    if (basis[x]) {
      x = basis[x + PERIOD] = basis[x];
      delete basis[x];
    }
    else {
      x += " ";
    }

    return x;
  };

  return FizzBuzzTwo;
})();

fizzbuzz = new FizzBuzzTwo(10000000);
fizzbuzz.displaySeries();

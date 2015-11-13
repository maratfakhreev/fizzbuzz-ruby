var FizzBuzzOne = (function() {
  function FizzBuzzOne(limit) {
    this.limit = limit;
    this.result = "";
  };

  FizzBuzzOne.prototype.displaySeries = function() {
    for (var i = 1; i <= this.limit; i++) {
      this.result += this.defineOutput(i) + " ";
    }
    // console.log(this.result);
  };

  FizzBuzzOne.prototype.defineOutput = function(x) {
    var number = "";
    if (x % 3 === 0) number += "fizz";
    if (x % 5 === 0) number += "buzz";

    return number === "" ? x : number;
  };

  return FizzBuzzOne;
})();

fizzbuzz = new FizzBuzzOne(10000000);
fizzbuzz.displaySeries();

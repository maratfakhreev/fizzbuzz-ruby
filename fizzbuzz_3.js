var FizzBuzzThree = (function() {
  var PERIOD = [3, 2, 1, 3, 1, 2, 3];
  var PERIOD_SIZE = PERIOD.length;

  function FizzBuzzThree(limit) {
    this.limit = limit;
    this.result = "";
  };

  FizzBuzzThree.prototype.displaySeries = function() {
    var nextStep = PERIOD[0];
    var j = 0;

    for (var i = 1; i <= this.limit; i++) {
      if (i === nextStep) {
        this.result += this.printFizzBuzz(j);
        j = ++j % PERIOD_SIZE;
        nextStep = nextStep + PERIOD[j];
      }
      else {
        this.result += i + " ";
      }
    }
    // console.log(this.result);
  };

  FizzBuzzThree.prototype.printFizzBuzz = function(j) {
    if (j === 1 || j === 4) return "buzz "
    if (j === 6) return "fizzbuzz ";

    return "fizz ";
  };

  return FizzBuzzThree;
})();

fizzbuzz = new FizzBuzzThree(10000000);
fizzbuzz.displaySeries();

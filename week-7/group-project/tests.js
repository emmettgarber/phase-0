// Add the finished solution here when you receive it.
// 
// USER STORY
// As a user I want to run a program called "sum" that will take an a set of numbers (whether set of numbers contains an even or odd amount of numbers) and sums the numbers together.

// New translation of user story:
// As a user I want to add together all the digits in an array, and output the sum.

// PSEUDOCODE:
// Create a function for sum(array)
// Declare a counter variable equal to zero
// FOR each number in the array, declare a variable equal to 0, iterate through each element in the array, adding 1 to variable each time.
// Declare counter variable equal to counter plus each element in the array

// REFACTORED CODE:

function sum(array) {
  var counter = 0;
  for (var i = 0; i < array.length; i++) {
    counter += array[i];
  }
  return counter;
};


// USER STORY
// As a user I want a program called "mean", that will take the average of all of the numbers from a set of numbers.

// New translation of user story:
// As a user I want to find the average value of a set of numbers and output the result.

// PSEUDOCODE:
// Create a function for mean(array)
// Declare a counter variable equal to zero
// FOR each number in the array, declare a variable equal to 0, iterate through each element in the array, adding 1 to variable each time.
// Declare counter variable equal to counter plus each element in the array
// Divide counter by number of elements in the array.

// REFACTORED CODE:

function mean (array) {
  var counter = 0;
  for (var i = 0; i < array.length; i++) {
    counter += array[i];
  }
  return counter / array.length;
}




// USER STORY
// As a user I want a program called "median" that gives me the middle value of a set of numbers (or for a set of numbers with an even amount of values, potentially the average of the 2 middle values, if the two middle values are not the same)

// New translation of user stories:
// As a user I want to find the median value of a set of numbers. If the set of numbers has an even number of digits, return the average of the two middle values to find the median value. Output the result.

// PSEUDOCODE:
// Create a function for median(array)
// IF the length of the array is evenly divisible by 2
// Declare variable middle equal to the number of elements in the array divided by 2
// Declare variable average equal to array element equal to middle, plus the array element before the middle element, and divide by 2

// IF the length of the array IS NOT evenly divisible by 2
// Declare variable middle equal to the number of elements in the array divided by 2, rounded down to the nearest integer
// Output the element at index middle

// REFACTORED CODE:

function median(array) {
 array.sort();
  
  var middle = Math.floor((array.length - 1)/2);
  if (array.length % 2 === 0) {
    return (array[middle] + array[middle+1]) / 2 ;
  } else {
    return array[middle];
  }
};
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
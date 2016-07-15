//Create a function that takes in a string as a parameter and reverses it

//First establish the length of the words being is sent to the program.
//Utilizing the input length we can cycle through each letter.
//While the input length is greater than 0 we need to print each letter
//moving back one space at a time; 10th letter, 9th letter, 8th letter, etc.
//minus 1 letter of the strings length with each cycle.
//Until the string length has no more letters.


var reverse = function(string) {
  var word = " ";
  for (var i = string.length; i > -1; i-=1)
  console.log(word += string[i]);
  return word;
};


var stringRev = reverse("Hello")

if (stringRev.length > 5) {
   console.log(stringRev);
} else {
  console.log("Sorry");
}


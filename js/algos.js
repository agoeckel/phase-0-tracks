
//list of words will be cycled through one at a time comparing the length of the
//first word with the length of the last word in the list. If the length of the first word
//is larger than the last word then the last word will be deleted, thus shortening the
//list by one value. This will be repeated until all values have been compared until
//the list only contains the largest value.


// Finding the Longest Phrase

function longestWord(words) {
  for (var i = 0; i < words.length; i++) {
    if (words[i].length > words[words.length - 1].length) {
      words.splice([words.length - 1],1);
      i -= 1
  } else if (words[i].length < words[words.length - 1].length) {
      words.splice(words[i],1);
      i -= 1
  } else if (words[i].length === words[words.length - 1].length && words.length != 1) {
      words.splice(words[i],1);
      i -= 1
  } else {
       console.log("Largest word: " + words);
    }
  }
}

//input will be two lists containing key and value pairs. The key and value pairs will be
//looped through comparing each value in each key until there is a match. If the a match is
//found then our output will be true. If there is no match then our output will be false.

// Find a Key-Value Match

function keyValueMatcher(key_value1, key_value2) {
var search = true
for (var key in key_value2 && key_value1) {
  if (key_value2[key] === key_value1[key])
    search = true
  else if (key_value1[key] != key_value2[key])
    search = false
  }
  console.log(search)
}

//input will be a number that will be used to create a list according to the specified number.
//First we make an empty list for our words to be stored. Next we create a word with over 10
//letters so that we can pull from that word randomly. We will conduct a loop according to the
//inputted number of times and create a random number that will be used to select letters out of our
//word creating a new word each time we loop. This word will then be stored into our empty list
//each time the loop runs until it fulfills its set inputted number.

// Random Test Data

function randomTestData(times) {
  wordArray = [];
  var letters = "aaalorieumebsumgd";
  for (var i = 0; i < times; i++) {
    var num = Math.floor(Math.random() * 10 + 1);
    wordArray.push(letters.substring(0, num));
  }
  console.log(wordArray);
}


//Longest Phrase driver code

var wordsArray = ["long", "long long long long long phrase", "longest phrase", "longer phrase", "even longer phrase"]

var namesArray = ["James", "Todd", "Ben", "Ralph Dennis", "Larry"]

longestWord(wordsArray)
longestWord(namesArray)


// keyValueMatcher driver code

var name1 = {name: "Tamir", age: 53, hair: "brown"}
var name2 = {name: "Steven", age:54, hair: "brown"}

keyValueMatcher(name1, name2)

// Random Test Data driver code

randomTestData(10)
longestWord(wordArray)


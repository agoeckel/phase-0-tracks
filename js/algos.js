
//


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


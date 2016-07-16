
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
       console.log(words);
    }
  }
}

var wordsArray = ["long", "long long long long long phrase", "longest phrase", "longer phrase", "even longer phrase"]

var namesArray = ["James", "Todd", "Ben", "Ralph Dennis", "Larry"]

longestWord(wordsArray)
longestWord(namesArray)






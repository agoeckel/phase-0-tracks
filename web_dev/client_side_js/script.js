console.log("The script is running!");

function enlargeLogo() {
  if (document.body.scrollTop > 50) {
    elemnt[0].style.fontSize = "1.5em"
    list1 = document.getElementsByTagName("ul")
    list1[0].style.backgroundColor = "lightblue";
  }
}

function toBottom(event) {
 console.log(event);
 event.target.style.border = "2px solid lightblue";
}

var elemnt = document.getElementsByClassName("logo");
window.addEventListener('scroll', enlargeLogo);

var docScroll = document.getElementsByClassName("header");
docScroll[0].addEventListener('click', toBottom);


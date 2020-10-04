function check() {
  const cards = document.getElementById("card");
  cards.forEach(function (card) {
    card.addEventListener("click",() => {
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/lists/${listId}`, true);
      XHR.responseType = "json";
      XHR.send();
    });
   });
}
window.addEventListener("load", check);
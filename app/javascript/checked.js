function check() {
  const cards = document.getElementById("card");
    cards.addEventListener("click",() => {
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/lists/{listId}/checked`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        const item = XHR.response.post;
        if (item.checked == true) {
          post.setAttribute("data-check", "true");
        } else if (item.checked === false) {
          post.removeAttribute("data-check");
        }
      };
    });
}
window.addEventListener("load", check);
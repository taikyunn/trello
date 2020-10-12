function star() {
  const star = document.getElementById("star");
  star.raty({
      size: 36,
      starOff: "/assets/star-off.png",
      starOn: "/assets/star-on.png",
      scoreName: "score"
    });
}
window.addEventListener("load", star);
function drag(){
  const card = document.getElementById("cardDrag");

      card.onmousedown = function(event){
        card.style.position = "absolute";
        document.addEventListener("mousemove",onMouseMove);

      const onMouseMove = function(event){
          const x = event.clientX;
          const y = event.clientY;
          const width = card.offsetWidth;
          const height = card.offsetHeight;
          card.style.top = (y-height/2) + "px";
          card.style.left = (x-width/2) + "px";
        }
      card.onmouseup = function(event){
          const x = event.clientX;
          const y = event.clientY;
          const width = card.offsetWidth;
          const height = card.offsetHeight;
          const list = document.getElementById("listDrag");
          if((x>=list.left && x<=(list.left+list.width)) && (y>=list.top && y<=(list.top+list.height)))

          list.appendChild(card)
      }
  }
}
window.addEventListener("load", drag); 

 

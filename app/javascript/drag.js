function drag(){
    const card = document.getElementById("cardDrag");
        card.onmousedown = function(event){
            document.addEventListener("mousemove",onMouseMove);
            card.onmousedown = function(event){
                console.log("タップされたよ!");
              }
        }
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
    
            }
          }
    window.addEventListener("load", drag); 
    
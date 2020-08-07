var items = document.querySelectorAll("li");
for(var item of items) {
    item.addEventListener("click", function(e) {
        e.target.style.fontSize = "32px";
    });
} 
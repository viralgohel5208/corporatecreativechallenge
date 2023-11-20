// header sticky code start
const header = document.querySelector(".sticky-header");
const offset = header.offsetTop + header.offsetHeight;
function headerHeightUpdate() {
  if (document.querySelector(".sticky-headerWrap.header-space") !== null) {
    // console.log("headerHeightUpdate", header.offsetHeight);
    document.querySelector(".sticky-headerWrap").style.minHeight =
      header.offsetHeight + "px";
  }
}
function makeSticky() {
  if (window.pageYOffset > offset) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
  setTimeout(() => {
    headerHeightUpdate();
  }, 10);
  
}
function checkHeader() {
  setTimeout(() => {
    headerHeightUpdate();
  }, 500);
}

$(window).on("load resize",function(e){
  console.log('resize')
  checkHeader();
});
window.addEventListener("scroll", makeSticky);
// header sticky code end

// Video modal player start
$("#videoModalBtn").click(function () {
  var src =
    "https://www.youtube.com/embed/yXWXFzjVnt8?rel=0&amp;autoplay=1&mute=1";
  $("#videoModal").modal("show");
  $("#videoModal iframe").attr("src", src);
});

$("#videoModal button").click(function () {
  $("#videoModal iframe").removeAttr("src");
});
// Video modal player end

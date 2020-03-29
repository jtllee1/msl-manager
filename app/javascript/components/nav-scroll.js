const navOnScroll = () => {
  $(document).ready(function() {
    $(window).scroll(function() {
      if($(this).scrollTop() > 100){
        $(".navbar").css({"opacity" : "0.5"});
      }
      else {
        $(".navbar").css({"opacity" : "1"});
      }
    });
  });
}

export { navOnScroll };

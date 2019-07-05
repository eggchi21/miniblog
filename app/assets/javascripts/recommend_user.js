$(document).ready(function(){
  $('#recommend_user').carousel(
  {
    dist: 0,
    padding: 0,
    fullWidth: true,
    indicators: true,
    duration: 100,
  }
  );
  autoplay()
  function autoplay() {
      $('#recommend_user').carousel('next');
      autoplay: true,
      setTimeout(autoplay, 4000);
  }
});

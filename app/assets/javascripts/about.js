$(document).ready(function(){
  $('#big3').carousel(
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
      $('#big3').carousel('next');
      autoplay: true,
      setTimeout(autoplay, 3000);
  }
});

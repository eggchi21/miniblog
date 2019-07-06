$(function(){
  $('.count').change(function(e){
    e.preventDefault();
    var total_calorie=Math.round($('#tweet_weight').val()*$('#tweet_set').val()*$('#tweet_rep').val()*0.0023*0.3*18)
    $('#tweet_calorie').val(total_calorie);

  })
})
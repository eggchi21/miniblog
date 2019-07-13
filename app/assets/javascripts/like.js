$(function(){
  $(document).on('click','.unlike-button',function(e){
    e.preventDefault();
    var tweet_id=Number($(this).next().data('tweet'))
    var url=$(this).attr('href')
    var html=`<button class="like-button like">
    <i class="material-icons middle-size ">favorite</i>
    </button>`
    $.ajax({
      type:'get',
      url:'/likes/'+ tweet_id + '/create',
      data:{id: tweet_id},
      dataType:'json'
    })
    .done(function(likes){
      var target="a[data-tweet="+ tweet_id +"]"
      $(target).prev().remove()
      $(target).parent().prepend(html)
      $(target).text(likes.length)
    })
    .fail(function(){
      alert('失敗しました')
    })
  })

  $(document).on('click','.like-button',function(e){
    e.preventDefault();
    var count= Number($(this).next().text())
    var tweet_id= Number($(this).next().data('tweet'))
    var url=$(this).attr('href')
    var html=`<button class="unlike-button like">
    <i class="material-icons middle-size ">favorite_border</i>
    </button>`
    $.ajax({
      type:'get',
      url:'/likes/'+ tweet_id + '/destroy',
      data:{id: tweet_id},
      dataType:'json'
    })
    .done(function(likes){
      var target="a[data-tweet="+ tweet_id +"]"
      $(target).prev().remove()
      $(target).parent().prepend(html)
      $(target).text(likes.length)
    })
    .fail(function(){
      alert('失敗しました')
    })
  })
})
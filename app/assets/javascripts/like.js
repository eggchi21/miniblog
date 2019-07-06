$(function(){

  $(document).on('click','.unlike-button',function(e){
    e.preventDefault();
    var count= Number($(this).next().text())
    var tweet_id=$(this).next().data('tweet')
    var url=$(this).attr('href')
    var html=`<a class="like-button" rel="nofollow" data-method="post" href="/likes/${tweet_id}/destroy">
    <i class="material-icons middle-size">favorite</i>
    </a>`
    $(this).next().text(count+1)
    $(this).parent().prepend(html)
    $(this).remove()
  })


  $(document).on('click','.like-button',function(e){
    e.preventDefault();
    var count= Number($(this).next().text())
    var tweet_id=$(this).next().data('tweet')
    var url=$(this).attr('href')
    var html=`<a class="unlike-button" rel="nofollow" data-method="post" href="/likes/${tweet_id}/create">
    <i class="material-icons middle-size">favorite_border</i>
    </a>`
    $(this).next().text(count-1)
    $(this).parent().prepend(html)
    $(this).remove()

  })
})
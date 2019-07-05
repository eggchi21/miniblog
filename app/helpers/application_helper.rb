module ApplicationHelper
  def big3_pic(tweet)
    if tweet.kind_i18n=="ベンチプレス"
      image_tag 'benchpress.jpg'
    elsif tweet.kind_i18n=="デッドリフト"
      image_tag 'deadlift.jpg'
    else
      image_tag 'squat.jpg'
    end
  end

  def user_image(tweet)
    if tweet.user.image.url
      tweet.user.image.url
    else
      'ninjawanko.jpg'
    end
  end
end

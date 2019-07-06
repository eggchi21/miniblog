class AddToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :weight, :integer
  end
end

class AddSetrepToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :rep, :integer
    add_column :tweets, :set, :integer
  end
end

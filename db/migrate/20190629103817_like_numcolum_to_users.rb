class LikeNumcolumToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :like_num, :like_num
  end
end

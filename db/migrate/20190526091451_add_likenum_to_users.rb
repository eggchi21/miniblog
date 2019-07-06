class AddLikenumToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_num, :integer
  end
end

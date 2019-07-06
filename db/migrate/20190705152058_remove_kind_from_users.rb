class RemoveKindFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :kind, :integer
  end
end

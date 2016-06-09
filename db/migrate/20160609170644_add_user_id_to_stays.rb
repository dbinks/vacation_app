class AddUserIdToStays < ActiveRecord::Migration
  def change
    add_column :stays, :user_id, :integer
  end
end

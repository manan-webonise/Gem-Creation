class RemoveUserIdFromUserAsset < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_assets, :user_id, :integer
  end
end

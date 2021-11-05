class CreateUserAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_assets do |t|

      t.timestamps
    end
  end
end

class AddImageProfileIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image_profile_id, :string
  end
end

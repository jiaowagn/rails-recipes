class AddFriendlyIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :friendly_id, :string
    add_index :events, :friendly_id, :unique => true 
  end
end

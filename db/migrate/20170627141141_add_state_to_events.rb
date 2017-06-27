class AddStateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :state, :string, default: "draft"
  end
end

class AddNameToChannel < ActiveRecord::Migration[6.0]
  def change
    add_column :channels, :name, :string
  end
end

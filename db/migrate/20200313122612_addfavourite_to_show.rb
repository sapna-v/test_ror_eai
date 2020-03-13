class AddfavouriteToShow < ActiveRecord::Migration[6.0]
  def change
  	add_column :shows, :favourite, :boolean, :default => false
  end
end

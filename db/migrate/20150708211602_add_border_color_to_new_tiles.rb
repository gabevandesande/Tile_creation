class AddBorderColorToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :border_color, :string
  end
end

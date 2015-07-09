class AddBorderWidthToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :border_width, :string
  end
end

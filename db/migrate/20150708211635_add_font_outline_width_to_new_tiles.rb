class AddFontOutlineWidthToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :font_outline_width, :string
  end
end

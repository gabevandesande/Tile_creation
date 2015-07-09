class AddFontOutlineToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :font_outline, :string
  end
end

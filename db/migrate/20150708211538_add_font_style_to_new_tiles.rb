class AddFontStyleToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :font_style, :string
  end
end

class AddFontColorToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :font_color, :string
  end
end

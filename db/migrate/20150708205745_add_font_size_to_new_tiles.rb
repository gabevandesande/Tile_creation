class AddFontSizeToNewTiles < ActiveRecord::Migration
  def change
    add_column :new_tiles, :font_size, :string
  end
end

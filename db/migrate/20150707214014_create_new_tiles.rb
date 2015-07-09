class CreateNewTiles < ActiveRecord::Migration
  def change
    create_table :new_tiles do |t|
      t.string :original_image
      t.string :quote
      t.string :output_image
      t.timestamps null: false
     
    end
  end
end

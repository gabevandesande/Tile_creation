class CreateLs < ActiveRecord::Migration
  def change
    create_table :ls do |t|
      t.string :Quotes
      t.text :quote

      t.timestamps null: false
    end
  end
end

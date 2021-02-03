class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.string :title
      t.text :cast 
      t.string :description
      t.boolean :classic
      t.integer :theater_id

      t.timestamps
    end
  end
end

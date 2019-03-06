class CreateSketches < ActiveRecord::Migration[5.2]
  def change
    create_table :sketches do |t|
      t.text :image
      t.string :kind
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end

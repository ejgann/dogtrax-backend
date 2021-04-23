class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :breed
      t.text :notes
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end

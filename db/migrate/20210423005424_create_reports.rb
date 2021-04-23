class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.datetime :date
      t.boolean :pee
      t.boolean :poop
      t.text :comments
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :walker, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class DropWalkers < ActiveRecord::Migration[6.1]
  def change
    drop_table :walkers
  end
end

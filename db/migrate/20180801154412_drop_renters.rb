class DropRenters < ActiveRecord::Migration[5.1]
  def change
    drop_table :renters
  end
end

class DropBodiesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :bodies
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

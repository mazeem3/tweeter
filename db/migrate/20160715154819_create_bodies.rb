class CreateBodies < ActiveRecord::Migration[5.0]
  def change
    create_table :bodies do |t|
      t.string :user_id

      t.timestamps
    end
  end
end

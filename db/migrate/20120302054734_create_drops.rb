class CreateDrops < ActiveRecord::Migration
  def change
    create_table :drops do |t|
      t.string :name

      t.timestamps
    end
  end
end

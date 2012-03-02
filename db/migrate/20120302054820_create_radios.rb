class CreateRadios < ActiveRecord::Migration
  def change
    create_table :radios do |t|
      t.string :name

      t.timestamps
    end
  end
end

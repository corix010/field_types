class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :active
      t.string :email
      t.string :password
      t.string :phone
      t.text :comment
      t.string :image_url
      t.integer :merit
      t.decimal :payment, precision: 8, scale: 2
      t.datetime :due
      t.integer :drop_id
      t.integer :radio_id
      t.integer :check_id

      t.timestamps
    end
  end
end

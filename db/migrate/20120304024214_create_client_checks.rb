class CreateClientChecks < ActiveRecord::Migration
  def change
    create_table :client_checks do |t|
      t.integer :client_id
      t.integer :check_id

      t.timestamps
    end
  end
end

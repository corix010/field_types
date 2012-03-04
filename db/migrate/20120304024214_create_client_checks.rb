class CreateClientChecks < ActiveRecord::Migration
  def  up
    create_table :client_checks do |t|
      t.integer :client_id
      t.integer :check_id

      t.timestamps
    end
  end
 
  def down
    remove_table :client_checks
  end

end

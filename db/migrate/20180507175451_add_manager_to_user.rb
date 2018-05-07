class AddManagerToUser < ActiveRecord::Migration
class User < ActiveRecord::Base; end
  def up
    change_table :users do |t|
      t.references :manager, null: true, index: true
    end
  end
  
  def down
    remove_index :users, column: :manager_id
    remove_column :users, :manager_id
  end


end
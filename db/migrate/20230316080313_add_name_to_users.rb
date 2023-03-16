class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :contact_number, :string
    # add_column :users, :date_of_birth, :date
    
  end
end

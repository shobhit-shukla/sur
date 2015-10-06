class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :rating, :integer
    add_column :users, :address_id, :integer
  end
end

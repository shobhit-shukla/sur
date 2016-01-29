class RemoveFieldsFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :latitude, :string
    remove_column :addresses, :logitude, :string
  end
end

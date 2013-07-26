class AddItemNameToCostcoRequests < ActiveRecord::Migration
  def change
    add_column :costco_requests, :item_name, :string
  end
end

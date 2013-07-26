class AddCreatedAtToCostcoRequests < ActiveRecord::Migration
  def change
    add_column :costco_requests, :created_at, :datetime
  end
end

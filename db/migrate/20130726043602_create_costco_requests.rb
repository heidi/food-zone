class CreateCostcoRequests < ActiveRecord::Migration
  def self.up
    create_table :costco_requests do |t|
      t.string    :consumable_type
      t.datetime  :requested_at
      t.string    :requester
      t.string    :quantity
      t.string    :notes
    end
  end

  def self.down
    drop_table :costco_requests
  end
end

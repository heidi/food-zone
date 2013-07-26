class CostcoRequest < ActiveRecord::Base

  # attr_accessible :title, :body
  attr_accessible :consumable_type, :item_name, :requested_at, :requester, :quantity, :notes

  def create

    super
  end
end

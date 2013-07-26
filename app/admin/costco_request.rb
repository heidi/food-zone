ActiveAdmin.register CostcoRequest do
  index do
    column :item_name
    column :consumable_type
    column :requester
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs 'Fill in the details of your new Costco request below:' do
      f.input :item_name
      f.input :consumable_type, :as => :select, :collection => %w[food drink snack BOOZE],
              :include_blank => false
      f.input :quantity
      f.input :notes
      f.input :requester, :as => :select, :collection => AdminUser.order("first_name ASC").map(&:name),
              :label_method => :name
    end
    f.actions
  end
end

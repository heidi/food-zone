class AddBdayAndDessertToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :birth_date, :date
    add_column :admin_users, :dessert_preference, :string
  end
end

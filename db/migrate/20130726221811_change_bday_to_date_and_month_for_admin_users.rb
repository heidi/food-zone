class ChangeBdayToDateAndMonthForAdminUsers < ActiveRecord::Migration
  def change
    remove_column :admin_users, :birth_date
    add_column :admin_users, :birth_date, :integer
    add_column :admin_users, :birth_month, :integer
  end
end

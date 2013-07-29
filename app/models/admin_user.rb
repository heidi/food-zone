class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name, :password_field, :password, :email,
    :password_confirmation, :birth_date, :birth_month, :dessert_preference

  def name
    "#{first_name} #{last_name}"
  end

  def birthday
    "#{Date::MONTHNAMES[birth_month]} #{birth_date}"
  end
end

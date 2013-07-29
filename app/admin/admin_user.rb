ActiveAdmin.register AdminUser do     
  index do                            
    column :email                     
    column :birthday, :sortable => false
    column :dessert_preference
    default_actions                   
  end                                 

  filter :email
  filter :birth_month, :as => :select, :collection => (1..12)
  filter :birth_date
  filter :dessert_preference

  form do |f|                         
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :birth_month, :as => :select,
              :collection => (1..12),
              :label_method => lambda{|m| Date::MONTHNAMES[m] },
              :include_blank => false
      f.input :birth_date, :as => :select, :collection => (1..31),
              :include_blank => false
      f.input :dessert_preference
      f.input :password
      f.input :password_confirmation
    end                               
    f.actions                         
  end                                 
end                                   

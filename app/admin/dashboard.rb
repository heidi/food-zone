ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
       column do
         panel "Recent Requests" do
           table_for CostcoRequest.
            where(created_at: 1.day.ago..Time.now).
            limit(10).
            map do
              column('Item') { |request| link_to(request.item_name, admin_costco_request_path(request)) }
              column('Requested By') { |request| request.requester}
              column('Date Requested') { |request| request.created_at.to_date}
             end
           end
         end

       column do
         panel "Upcoming Birthdays" do
           table_for AdminUser.
                       where(birth_month: [Time.now.month, Time.now.month + 1]).
                       limit(10).
                       map do
             column('Name') { |user| link_to(user.name, admin_admin_user_path(user)) }
             column('Birthday') { |user| user.birthday}
           end
         end
       end
    end
  end # content
end

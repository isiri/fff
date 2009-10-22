# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def setup_user(user)
    returning(user) do |u|
      u.build_address if u.address.nil?
      u.user_family_members.build([{},{},{}]) if u.user_family_members.empty?
      u.user_family_members << UserFamilyMember.new if u.user_family_members.length == 1
      u.user_family_members << UserFamilyMember.new if u.user_family_members.length == 2
    end
  end
end

When(/^I go to admin login page$/) do
  visit new_admin_user_session_path
end

When(/^I go to home page$/) do
  visit root_path
end

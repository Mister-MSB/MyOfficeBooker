When(/^I log as an admin$/) do
  fill_in "admin_user[email]",    with: @admin.email
  fill_in "admin_user[password]", with: @admin.password
  click_on("Se connecter")
end

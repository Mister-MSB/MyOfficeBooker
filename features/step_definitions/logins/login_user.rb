When(/^I log as an user$/) do
  fill_in "user[email]",    with: @user.email
  fill_in "user[password]", with: @user.password
  click_on("Valider")
end

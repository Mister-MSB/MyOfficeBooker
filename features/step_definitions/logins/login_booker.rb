When(/^I log as a booker$/) do
  fill_in "booker[email]",    with: @booker.email
  fill_in "booker[password]", with: @booker.password
  click_on("Valider")
end

Then(/^I see "(.*)" on this page$/) do |content|
  expect(page).to have_content(content)
end

Then(/^I expect current path to be "(.*)"$/) do |content|
  expect(current_path).to eq(eval(content))
end

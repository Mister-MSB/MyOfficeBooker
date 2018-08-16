And(/^I fill the registration form correctly$/) do
  fill_in "booker[email]",                 with: "jimmyfragne@russian.pulp"
  fill_in "booker[password]",              with: "password"
  fill_in "booker[password_confirmation]", with: "password"
  fill_in "booker[firstname]",             with: "JiJi"
  fill_in "booker[lastname]",              with: "FraFra"
  click_on("S'inscrire")
end

And(/^I fill the registration form badly$/) do
  fill_in "booker[password]",              with: "password"
  fill_in "booker[password_confirmation]", with: "password"
  fill_in "booker[firstname]",             with: "JiJi"
  fill_in "booker[lastname]",              with: "FraFra"
  click_on("S'inscrire")
end

And(/^I fill the update registration form correctly$/) do
  fill_in "booker[email]",     with: "jimmyfragne@russian.pulp"
  fill_in "booker[phone]",     with: "0610186230"
  fill_in "booker[mobile]",    with: "0610186230"
  fill_in "booker[firstname]", with: "JiJi"
  fill_in "booker[lastname]",  with: "FraFra"
  select("Femme", from: "booker[sex]")
  click_on("Mettre a jour")
end

And(/^I fill the update registration form badly$/) do
  fill_in "booker[email]",     with: ""
  fill_in "booker[phone]",     with: "0610186230"
  fill_in "booker[mobile]",    with: "password"
  fill_in "booker[firstname]", with: "JiJi"
  fill_in "booker[lastname]",  with: "FraFra"
  select("Homme", from: "booker[sex]")
  click_on("Mettre a jour")
end

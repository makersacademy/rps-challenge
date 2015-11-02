require 'capybara'
def sign_in
  visit("/")
  expect(page).to have_content("INPUT NAME")
  fill_in(:player_name, with: "YAAARRRGH")
  click_button('SUBMIT')
end

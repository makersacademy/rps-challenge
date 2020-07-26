require "./app"
require "spec_helper.rb"

feature Rps do
  scenario "allows a player to fight a computer" do
    sign_in
    click_button('Throw!')
    expect(page).to have_content("wins!")
  end
end
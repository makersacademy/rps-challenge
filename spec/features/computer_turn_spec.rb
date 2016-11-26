require './app'

RSpec.feature "Computer's turn", :type => :feature do
  scenario "show's computer's choice" do
    sign_in_and_play
    click_button("Rock")
    click_button("Computer's choice")
    expect(page).to have_content("Computer picks: ")
  end
end

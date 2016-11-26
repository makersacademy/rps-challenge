require './app'

RSpec.feature "Player's choice", :type => :feature do
  scenario "player picks rock" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("You have chosen: Rock!")
  end
  scenario "player picks paper" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("You have chosen: Paper!")
  end
  scenario "player picks scissors" do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("You have chosen: Scissors!")
  end
end

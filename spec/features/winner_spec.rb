require './app'

RSpec.feature "Declaring a winner", :type => :feature do
  before do
    sign_in_and_play
    click_button("Rock")
    click_button("Computer's choice")
    click_button("Who wins?")
  end
  scenario "Winning the game" do
    expect(page).to have_text("...and the winner is: ")
  end
end

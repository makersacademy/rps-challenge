require_relative '../../app'

feature "Computer is declared the winner" do
  scenario "when the computer beats the player" do
    choose_rock
    srand 1
    click_button 'Submit'
    expect(page).to have_content "Computer wins!"
    expect(page).to have_content "Joe chose Rock. Computer chose Paper"
  end
end

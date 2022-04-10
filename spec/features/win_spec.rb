require_relative '../../app'

feature "Player is declared the winner" do
  scenario "when the player beats the computer" do
    choose_rock
    srand 3
    click_button 'Submit'
    expect(page).to have_content "Joe wins!"
    expect(page).to have_content "Joe chose Rock. Computer chose Scissors"
  end
end

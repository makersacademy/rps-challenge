require_relative '../../app.rb'

feature "playing the game" do

  scenario "allows user to select a weapon" do
    ['Rock', 'Paper', 'Scissors'].each do |weapon|
      sign_in_and_play
      choose weapon
      click_button 'Confirm Choice'
      expect(page).to_not have_content("Choose your weapon, Ed")
      expect(page).to have_content("You have chosen #{weapon}")
    end
  end

  scenario "computer selects rock" do
    srand 1233
    sign_in_and_play
    player_chooses_rock
    expect(page).to have_content("Your opponent has chosen Rock")
  end

# 1230 paper
# 1233 rock
# 1234 scissors
# based on [Rock, Paper, Scissors].sample

end

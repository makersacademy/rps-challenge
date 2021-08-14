require_relative '../../app.rb'

feature "playing the game" do

  scenario "allows user to select a weapon" do
    ['Rock', 'Paper', 'Scissors'].each do |weapon|
      sign_in_and_play
      choose weapon
      click_button 'Confirm Choice'
      expect(page).to_not have_content("Choose your weapon, Ed")
      expect(page).to have_content("Ed has chosen #{weapon}")
    end
  end

  scenario "computer selects a weapon" do
    sign_in_and_play(5)
    player_chooses_rock
    expect(page).to have_content("HAL 9000 has chosen Scissors")
  end

  scenario "player & computer select same weapon: drawn game" do
    sign_in_and_play(2)
    player_chooses_rock
    expect(page).to have_content("It's a draw!")
  end

  scenario "player rock & computer paper: computer wins" do
    sign_in_and_play
    player_chooses_rock
    expect(page).to have_content("Ed loses, HAL 9000 wins!")
  end

  scenario "player rock & computer scissors: player wins" do
    sign_in_and_play(5)
    player_chooses_rock
    expect(page).to have_content("Ed wins, HAL 9000 loses!")
  end

  scenario "can start a new game" do
    sign_in_and_play
    player_chooses_rock
    click_button 'Play Again'
    expect(page).to have_content("Choose your weapon, Ed")
    expect(page).to_not have_content("Ed loses, HAL 9000 wins!")
  end

  scenario "computer player chooses different weapon in new game" do
    sign_in_and_play
    player_chooses_rock
    click_button 'Play Again'
    player_chooses_rock
    expect(page).to have_content("It's a draw!")
  end

end

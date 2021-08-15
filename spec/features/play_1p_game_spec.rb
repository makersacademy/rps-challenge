require_relative '../../app.rb'

feature 'playing solo game' do

  scenario 'allows user to select a weapon' do
    ['Rock', 'Paper', 'Scissors'].each do |weapon|
      sign_in_and_play_vs_computer
      choose weapon
      click_button 'Confirm Choice'
      expect(page).to_not have_content('Choose your weapon, Ed')
      expect(page).to have_content("Ed has chosen #{weapon}")
    end
  end

  scenario 'ensures rock is checked by default' do
    sign_in_and_play_vs_computer
    expect(find_field('Rock')).to be_checked
  end

  scenario 'computer selects a weapon' do
    p1_signs_in_chooses_rock_vs_computer(:scissors)
    expect(page).to have_content('HAL 9000 has chosen Scissors')
  end

  scenario 'player & computer select same weapon: drawn game' do
    p1_signs_in_chooses_rock_vs_computer(:rock)
    expect(page).to have_content("It's a draw!")
  end

  scenario 'player rock & computer paper: computer wins' do
    p1_signs_in_chooses_rock_vs_computer(:paper)
    expect(page).to have_content("Ed loses, HAL 9000 wins!")
  end

  scenario 'player rock & computer scissors: player wins' do
    p1_signs_in_chooses_rock_vs_computer(:scissors)
    expect(page).to have_content('Ed wins, HAL 9000 loses!')
  end

  scenario 'can start a new game' do
    p1_signs_in_chooses_rock_vs_computer(:paper)
    click_button 'Play Again'
    expect(page).to have_content('Choose your weapon, Ed')
    expect(page).to_not have_content('Ed loses, HAL 9000 wins!')
  end

  scenario 'computer player chooses different weapon in new game' do
    p1_signs_in_chooses_rock_vs_computer(:paper)
    click_button 'Play Again'
    p1_chooses_rock
    expect(page).to have_content("It's a draw!")
  end

end

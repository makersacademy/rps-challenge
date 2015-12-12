describe 'User Stores - Play' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'choose Rock, Paper or Scissors' do
    scenario 'choose Rock' do
      sign_in_and_play_computer
      click_button 'Rock'
      expect(page).to have_content('You chose rock. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'choose Paper' do
      sign_in_and_play_computer
      click_button 'Paper'
      expect(page).to have_content('You chose paper. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'choose Scissors' do
      sign_in_and_play_computer
      click_button 'Scissors'
      expect(page).to have_content('You chose scissors. What will computer choose?')
      click_button "Let's find out..."
    end
  end
end

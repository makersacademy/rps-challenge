feature 'register your name to play online game' do
  scenario 'submitting name' do
    fill_in_name
    expect(page).to have_content 'Harry vs. Computer'
  end
end
  feature 'the player can select rock, paper or scissors' do
    scenario 'player selects Rock' do
      fill_in_name
      choose("rock")
      click_button 'continue'
      expect(page).to have_content 'Harry chooses rock'
    end
    scenario 'player selects paper' do
      fill_in_name
      choose("paper")
      click_button 'continue'
      expect(page).to have_content 'Harry chooses paper'
    end
    scenario 'player selects scissors' do
      fill_in_name
      choose("scissors")
      click_button 'continue'
      expect(page).to have_content 'Harry chooses scissors'
    end
  end
  feature 'the game allows you to play again' do
    scenario 'player plays once then has the option
    to select play again' do
      fill_in_name
      choose ('rock')
      click_button 'continue'
      page.should have_selector(:link_or_button, 'play again?')
      click_button 'play again?'
      expect(page).to have_content 'Harry vs. Computer'
    end
  end
  feature 'the game shows you the result on completion' do
    scenario 'player plays' do
      fill_in_name
      choose ('rock')
      click_button 'continue'
      expect(page).to have_content 'wins'
    end
  end






feature 'Show matchup' do
  scenario 'will show the player choice', type: :feature do
    visit('/')
    fill_in 'player',	with: 'Marketeer'
    click_button 'START GAME'
    click_button 'Rock'
    expect(page).to have_content 'Rock vs.'
  end

  context 'the computer chooses rock' do
    before do
      # many thanks to Karim (github https://github.com/karimabuseer) for introducing me to allow_any_instance_of.
      allow_any_instance_of(Game).to receive(:RPS_sample).and_return('Rock')
    end
    scenario 'will show computer choice' do
      visit('/')
      fill_in 'player',	with: 'Marketeer'
      click_button 'START GAME'
      click_button 'Rock'
      expect(page).to have_content 'Rock vs. Rock'
    end

    scenario 'will show result draw' do
      visit('/')
      fill_in 'player',	with: 'Marketeer'
      click_button 'START GAME'
      click_button 'Rock'
      expect(page).to have_content("It's a draw!")
    end
    scenario 'will show result win' do
      visit('/')
      fill_in 'player',	with: 'Marketeer'
      click_button 'START GAME'
      click_button 'Paper'
      expect(page).to have_content("You won!")
    end
    scenario 'will show result lose' do
      visit('/')
      fill_in 'player',	with: 'Marketeer'
      click_button 'START GAME'
      click_button 'Scissors'
      expect(page).to have_content("You lost!")
    end
  end
end

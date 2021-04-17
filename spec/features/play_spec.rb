feature 'Playing the game' do
  scenario 'player can choose rock' do
    visit('/')
    fill_in :player_1, with: 'matt'
    click_button 'Submit'
    click_button('rock')

    expect(page).to have_content("You have chosen Rock")
  end

  scenario 'player can choose paper' do
    visit('/')
    fill_in :player_1, with: 'matt'
    click_button 'Submit'
    click_button('paper')

    expect(page).to have_content("You have chosen Paper")
  end

  scenario 'player can choose scissors' do
    visit('/')
    fill_in :player_1, with: 'matt'
    click_button 'Submit'
    click_button('scissors')

    expect(page).to have_content("You have chosen Scissors")
  end
end

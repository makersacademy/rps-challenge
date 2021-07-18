feature 'Choose RPS' do
  scenario 'will display RPS choices', type: :feature do
    visit('/')
    fill_in 'player',	with: 'Marketeer'
    click_button 'START GAME'
    expect(page).to have_content 'please choose Rock, Paper, or Scissors.'
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

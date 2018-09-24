# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Allow player to play rock/paper/scissors' do
  scenario 'gives player option to pick rock' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Rock'
  # computer_move = 'Paper'
  # expect(page).to have_content('You Lost!')
  end

  scenario 'gives player option to pick paper' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Paper'
  # computer_move = 'Scissors'
  # expect(page).to have_content('You Lost!')
  end

  scenario 'gives player option to pick scissors' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Scissors'
  # computer_move = 'Rock'
  # expect(page).to have_content('You Lost!')
  end
end

feature 'Enter user data and game play' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_1_name, with: 'Neil'
    click_button 'Lets Play!'
    expect(page).to have_content 'please click on one of the following buttons: Rock, Paper, Scissors'
  end
  scenario 'selecting weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Neil'
    click_button 'Lets Play!'
    click_button 'Rock'
    expect(page).to have_content ('you chose Rock')
  end
  scenario 'result Win or Lose!' do
    visit('/')
    fill_in :player_1_name, with: 'Neil'
    click_button 'Lets Play!'
    click_button 'Rock'
    expect(page).to have_content ('you chose Rock')
  end

end

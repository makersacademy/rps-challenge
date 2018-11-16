feature 'Result page' do

  scenario 'expect to see move that player chose' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_content('You chose rock')
  end

  scenario 'expect to see move that computer chose' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_content('Computer player chose')
  end
end

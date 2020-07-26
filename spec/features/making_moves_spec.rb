feature 'making moves' do
  scenario 'I can choose from three different moves' do
    enter_name
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end
  scenario 'player 2 can choose from three different moves' do
    enter_multiplayer
    click_button 'Rock'
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end
end

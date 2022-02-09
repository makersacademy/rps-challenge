feature 'Enter name' do
  scenario 'Player enters their name' do
    visit('/')
    fill_in :player_name, with: 'Chloe'
    click_button 'Play'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

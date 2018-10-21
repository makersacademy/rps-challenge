feature 'Multiplayer' do
  scenario 'player 1 and player 2 enter their names and get a welcome screen' do
    visit '/'
    click_button 'Two Player'
    fill_in 'player_1', with: "Mittens"
    fill_in 'player_2', with: "Dave"
    click_button 'Submit'
    expect(page).to have_content 'Mittens vs. Dave!'
    expect(page).to have_content 'Mittens, please select a move!'
  end
end

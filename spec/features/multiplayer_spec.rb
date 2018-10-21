feature 'Multiplayer' do
  scenario 'player 1 and player 2 enter their names and get a welcome screen' do
    visit '/'
    select 'One Player', from: 'players'
    click_button 'Submit'
    fill_in 'player_1_name', with: "Mittens"
    fill_in 'player_2_name', with: "Dave"
    click_button 'Submit'
    expect(page).to have_content 'Mittens vs. Dave!'
    expect(page).to have_content 'Mittens, please select a move!'
  end
end

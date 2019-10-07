feature 'Multiplayer' do
  scenario 'player 1 and player 2 enter their names and get a welcome screen' do
    visit '/'
    select 'Two Player', from: 'players'
    click_button 'Submit'
    fill_in 'Player 1 Name', with: "Mittens"
    fill_in 'Player 2 Name', with: "Dave"
    click_button 'Submit'
    expect(page).to have_content 'Mittens vs. Dave!'
  end

  scenario 'player 1 wins' do
    visit '/'
    select 'Two Player', from: 'players'
    click_button 'Submit'
    fill_in 'Player 1 Name', with: "Mittens"
    fill_in 'Player 2 Name', with: "Dave"
    click_button 'Submit'
    select 'Rock', from: 'player_1_move'
    select 'Scissors', from: 'player_2_move'
    click_button 'Submit'
    expect(page).to have_content 'Mittens wins!'
  end

  scenario 'player 2 wins' do
    visit '/'
    select 'Two Player', from: 'players'
    click_button 'Submit'
    fill_in 'Player 1 Name', with: "Mittens"
    fill_in 'Player 2 Name', with: "Dave"
    click_button 'Submit'
    select 'Rock', from: 'player_1_move'
    select 'Paper', from: 'player_2_move'
    click_button 'Submit'
    expect(page).to have_content 'Dave wins!'
  end
end

feature 'can play rps' do
  scenario 'player 1 enter rock, player 2 enters rock' do
    sign_in_and_play
    fill_in :player_1_card, with: 'rock'
    fill_in :player_2_card, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Tie'
  end
  scenario 'player 1 enter rock, player 2 enters scissors' do
    sign_in_and_play
    fill_in :player_1_card, with: 'rock'
    fill_in :player_2_card, with: 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'Steve wins'
  end
  scenario 'player 1 enter rock, player_2 enters paper' do
    sign_in_and_play
    fill_in :player_1_card, with: 'rock'
    fill_in :player_2_card, with: 'paper'
    click_button 'Submit'
    expect(page).to have_content 'Dave wins'
  end
end

feature "rock paper scissors game" do
  scenario "player 1 plays against player 2" do
    visit('/')
    fill_in 'player_1_move', with: 'Rock'
    click_button('Submit move!')
    fill_in 'player_2_move', with: 'Scissors'
    click_button('Submit move!')
    expect(page).to have_content('Player 1 wins!')
  end
end

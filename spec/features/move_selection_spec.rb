feature 'Player can select a move: either rock, paper or scissors' do
  scenario 'after logging in the player selects a move' do
    sign_in_and_play
    fill_in(:player_1_move, with: 'Paper')
    click_button('Play')
    expect(page).to have_content("Pamela selected Paper")
  end

end
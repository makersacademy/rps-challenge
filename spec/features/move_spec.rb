feature 'Player can select a move' do
  scenario 'after signing in the player selects a move' do
    sign_in_and_play
    fill_in(:player_1_move, with: 'Rock')
    click_button('Lets GO!')
    expect(page).to have_content("Odin chose: Rock!")
  end

end

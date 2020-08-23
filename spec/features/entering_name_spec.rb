feature 'Name is displayed after entry' do
  scenario 'player1 enters name ' do
    player_1_sign_in_and_play
    expect(page).to have_content 'Yasmin what is your choice?'
  end
end

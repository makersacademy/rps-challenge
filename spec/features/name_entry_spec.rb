feature 'Name Entry' do
  scenario 'Player is able to enter name  into the game' do
    sign_in_and_play
    expect(page).to have_content('Player: Lubos')
  end
end

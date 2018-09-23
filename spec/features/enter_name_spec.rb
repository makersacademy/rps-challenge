feature 'Once a user chooses a one player game' do
  scenario 'the user can enter their name' do
    sign_in_one_player
    expect(page).to have_content("Billy, let's play RPSLS!")
  end
end

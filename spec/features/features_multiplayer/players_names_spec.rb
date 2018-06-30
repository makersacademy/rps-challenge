feature 'both players can enter their names' do
  scenario 'entered names are displayed on screen' do
    play_multiplayer
    both_sign_in_and_play

    expect(page).to have_content('Hi, Josu & Jaime')
  end
end

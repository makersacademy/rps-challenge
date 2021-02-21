feature 'multiplayer' do
  scenario 'two people can play each other' do
    multiplayer_sign_in
    expect(page).to have_content("Kevin vs. Nigel")
  end

  scenario 'multiplayer game is possible' do
    multiplayer_sign_in_and_play
    expect(page).to have_button("Play again?")
  end
end

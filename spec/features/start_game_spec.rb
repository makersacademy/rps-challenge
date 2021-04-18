feature 'start game' do
  scenario 'allow to play a game' do
    sign_in_and_play
    expect(page).to have_button("rock")
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
    expect(page).to have_button('lizard')
    expect(page).to have_button('spock')
  end
end

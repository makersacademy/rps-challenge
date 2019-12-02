feature 'Player options' do
  scenario 'player sees buttons for rock paper scissors' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end
end

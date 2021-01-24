feature 'adding player names' do
  scenario 'Can input player name and enter the gamee!' do
    sign_in_and_play
    expect(page).to have_content('Katy has entered the game!')
  end
end
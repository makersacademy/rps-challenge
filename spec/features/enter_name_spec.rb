require './app'

feature 'Player name' do
  scenario 'Can fill in name and see name on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Michael'
  end

  scenario 'Can fill in name for a second player' do
    multiplayer
    expect(page).to have_content 'Michael 2'
  end
end

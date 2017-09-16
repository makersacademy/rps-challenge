feature 'see the arena setup' do
  scenario 'see player name on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player - choose your weapon!'
  end
end

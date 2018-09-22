require './app'

feature 'Configure Player 1' do
  scenario 'Enter and verify name for player 1' do
    sign_in_and_play
    expect(page).to have_content('Jon')
  end
end

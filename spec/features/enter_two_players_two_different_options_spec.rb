require_relative './web_helpers'

feature do 'Enter player1 and player2 names'
  scenario 'submitting player1, player2 and 2 different options' do
    sign_in_and_play
    expect(page).to have_content "player2 wins!"
  end
end

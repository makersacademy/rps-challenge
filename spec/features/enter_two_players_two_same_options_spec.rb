require_relative './web_helpers'

feature 'Enter player1 and player2' do
  scenario 'submitting player1 and player2 names and 2 same options'do
    sign_in_and_play_tie
    expect(page).to have_content "This is a tie!"
  end
end

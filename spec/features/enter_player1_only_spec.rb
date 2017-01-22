require_relative './web_helpers'

feature 'Enter player1' do
  scenario 'submitting only player1 name'do
    sign_in_and_play_player1
    expect(page).to have_content "Sorry, missing player(s)"
  end
end

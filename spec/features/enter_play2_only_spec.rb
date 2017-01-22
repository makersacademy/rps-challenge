require_relative './web_helpers'

feature 'Enter player2' do
  scenario 'submitting only player2 name'do
    sign_in_and_play_player2
    expect(page).to have_content "Sorry, missing player(s)"
  end
end

require "./spec/web_helpers.rb"

feature 'Filling Form' do
  scenario 'returns Player name entered' do
    sign_in_and_play
    expect(page).to have_content 'Xavier vs bot!'
  end
end
require_relative'web_helpers'

feature 'Enter player name' do

  scenario 'Can receive entered player name' do
    sign_in_and_go
    expect(page).to have_content "Marketeer"
  end

  scenario 'Can see entered name being greeted before the game begins' do
    sign_in_and_go
    expect(page).to have_content "Welcome, Marketeer! Your game is ready."
  end
  # can get to result page
end

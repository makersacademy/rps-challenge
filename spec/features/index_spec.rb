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

  scenario 'Can see a selection of game turns' do
    sign_in_and_go
    click_button 'Rock Paper Scissors!'
    expect(page).to have_content "Select your hand"
  end
end

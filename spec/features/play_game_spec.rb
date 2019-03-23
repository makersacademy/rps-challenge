# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game play' do
  scenario 'user sees result' do
    visit '/'

    fill_in "name",	with: "Player1"
    click_button 'Start game'
    click_button 'Play'
    expect(page).to have_content 'Player1' 
  end
end

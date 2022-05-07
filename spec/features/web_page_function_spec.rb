require '/Users/jimmylyons/Documents/Programming/Makers/Projects/week3/rps-challenge/app.rb'

feature 'Testing infrastructure' do
  scenario "Asks for player name" do
    visit '/'
    expect(page).to have_content 'Player Name:'
  end
end

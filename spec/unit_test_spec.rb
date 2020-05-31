require 'sinatra'

feature "Player name" do
  scenario "display form " do
  visit '/'
  fill_in :player_1, with: 'Sophie'
  click_button("Let's play!")
  expect(page).to have_content('Welcome, Sophie')
  end

  scenario "move selection" do
    visit '/play'
    expect(page).to have_content("What's your move?\nRock\nPaper\nScissors")
  end
end

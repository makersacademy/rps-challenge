require 'sinatra'

feature "Player name" do
  scenario "display form " do
  visit '/'
  fill_in :player_1, with: 'Sophie'
  click_button("Let's play!")
  expect(page).to have_content('Welcome, Sophie!')
  end

  # scenario "redirect info" do
  #   visit '/info'

end

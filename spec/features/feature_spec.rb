require 'capybara/rspec'

feature "Welcome Page" do
  scenario "The welcome page displays a greeting" do
    visit('/')
    expect(page).to have_content(/ROCK, PAPER, SCISSORS/)
  end
end
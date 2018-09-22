require 'capybara/rspec'

feature "On the home page" do
  scenario "Users can enter their name" do
    visit("/")
    fill_in(:player_name, with: "Billy")
    click_button 'Play!'
    expect(page).to have_content("Billy, let's play RPSLS!")
  end
end

require_relative '../../app.rb'

feature 'play ' do

  scenario "expect to see player name" do
    visit("/play")
    expect(page).to have_content('John')
  end

  scenario "player can choose rock, paper or scissors" do
    visit('/play')
    find_button("Rock").click
  end

end

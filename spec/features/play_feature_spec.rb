require_relative '../../app.rb'

feature 'play ' do

  scenario "expect to see player name" do
    visit("/play")
    expect(page).to have_content('John')
  end

end

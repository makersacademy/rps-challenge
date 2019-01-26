require_relative '../../app.rb'

feature 'result ' do

  scenario "expect to see player name" do
    visit("/result")
    expect(page).to have_content('John')
  end

  scenario "expect to see what move the computer made" do
    visit("/result")
    expect(page).to have_content("The computer's move was:")
  end

end

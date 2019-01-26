require_relative '../../app.rb'

feature 'result ' do

  scenario "expect to see player name" do
    visit("/result")
    expect(page).to have_content('John')
  end

  scenario "expect to see whether player has won" do
    visit('/result')
    expect(page).to have_content("You've won!!")
  end

end

require './app'
require_relative 'web_helpers'

feature 'can choose rock, paper or scissors' do
  before { sign_in_and_play }

  scenario 'player chooses rock and page displays choice' do
  	click_button "Rock"
  	expect(page).to have_content "You chose Rock!"
  end

  scenario 'player chooses paper and page displays choice' do
  	click_button "Paper"
  	expect(page).to have_content "You chose Paper!"
  end

  scenario 'player chooses scissors and page displays choice' do
  	click_button "Scissors"
  	expect(page).to have_content "You chose Scissors!"
  end

end
require './app'
require_relative 'web_helpers'

feature 'player and computer can choose rock, paper or scissors' do
  before { sign_in_and_play }

  scenario 'player chooses rock and page displays choice' do
  	click_button "rock"
  	expect(page).to have_content "You chose rock!"
  end

  scenario 'player chooses paper and page displays choice' do
  	click_button "paper"
  	expect(page).to have_content "You chose paper!"
  end

  scenario 'player chooses scissors and page displays choice' do
  	click_button "scissors"
  	expect(page).to have_content "You chose scissors!"
  end

  scenario 'computer chooses scissors, rock or paper' do
    click_button "scissors"
    expect(page).to have_content(/Computer\schose\sscissors|rock|paper!/)
  end
end

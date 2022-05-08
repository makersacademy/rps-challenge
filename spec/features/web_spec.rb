require 'capybara/rspec'
require_relative '../../app'
require_relative './webhelper'

Capybara.app = Rps

feature 'Users can log-in to the site' do
  
  scenario 'A user can enter their name to a form' do
    sign_in
    expect(page).to have_content 'Timbo'
  end

end

feature 'A logged in user can make a move' do
  
  scenario 'a user should be able to see the possible move: rock' do
    
    sign_in
    expect(page).to have_field "Rock"
  end

  scenario 'a user should be able to see the possible move: paper' do
    
    sign_in
    expect(page).to have_field "Paper"
  end

  scenario 'a user should be able to see the possible move: scissors' do
    
    sign_in
    expect(page).to have_field "Scissors"
  end

end

feature "a user can play the game, and see the outcome accordingly" do
  let(:outcome) { "You win this time, human" }

  scenario 'a user plays the game and gets an outcome' do
    sign_in
    choose("Rock")
    click_button("Submit")

    expect(page).to have_content("You win this time, human")
  end

end

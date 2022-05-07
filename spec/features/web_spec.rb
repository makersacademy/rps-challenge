require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Rps

feature 'Users can log-in to the site' do
  
  scenario 'A user can enter their name to a form' do
    visit '/'
    fill_in 'player_name', with: 'Timbo'
    click_button('Submit name')
    expect(page).to have_content 'Timbo'
  end

end

feature 'A logged in user can make a move' do
  
  scenario 'a user should be able to see the possible move: rock' do
    
    visit '/'
    fill_in 'player_name', with: 'Timbo'
    click_button('Submit name')

    expect(page).to have_button "Rock"
  end

  scenario 'a user should be able to see the possible move: paper' do
    
    visit '/'
    fill_in 'player_name', with: 'Timbo'
    click_button('Submit name')

    expect(page).to have_button "Paper"
  end

  scenario 'a user should be able to see the possible move: scissors' do
    
    visit '/'
    fill_in 'player_name', with: 'Timbo'
    click_button('Submit name')

    expect(page).to have_button "Scissors"
  end

end
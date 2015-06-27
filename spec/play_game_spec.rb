require 'spec_helper'

feature 'Start a new game' do

  scenario 'welcome page directs to page to enter name' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
    click_button('Start')
    visit '/start'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'presents a form to enter name' do
    visit '/start'
    fill_in('name', with: 'Henry')
    click_button('Submit')
    expect(page).to have_content "Hello Henry, rules for the game are as follows:"
  end

  scenario 'presents an error page if name field is empty when form submitted' do
    visit '/start'
    fill_in('name', with: '')
    click_button('Submit')
    visit '/error'
    expect(page).to have_content "* please fill in your name"
  end

  scenario 'new game started' do
    visit '/start'
    fill_in('name', with: 'Henry')
    click_button('Submit')
    expect(page).to have_content "Hello Henry, rules for the game are as follows:"
    click_link('Start')
    visit '/new_game'
    expect(page).to have_content "Hello Henry!"
  end

end


feature 'Playing game' do

  before(:each) do
   $game = nil
  end

  scenario '' do

  end

end

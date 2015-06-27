require 'spec_helper'

feature 'Start a new game' do

  scenario 'welcome page directs to page to enter name' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
    click_button('Start')
    visit '/start'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'Gives you a form to fill in your name' do
    visit '/'
    click_link 'Start'
    fill_in('name', with: 'Henry')
    click_button('See rules')
    expect(page).to have_content "Hello James, you are the chosen one. Now, click the magic button to see your board on which you will place your ships"
  end

scenario 'Filled in empty form' do
  visit '/new_game'
  fill_in('name', with: '')
  click_button('submit')
  expect(page).to have_content "Please enter your name"
end

scenario 'player can select new board button once they have entered a name' do
   visit '/new_game'
   fill_in('name', with: 'James')
   click_button('submit')
   expect(page).to have_content "HUZZAH"
   click_link('HUZZAH')
 end


  scenario 'request that marketeer enters their name' do
    visit '/start'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'allows the marketeer to input their name' do
    visit '/start'
    expect(page).to have_content "Please enter your name:"
    fill_in('name', with: 'Bob')
    click_button('Start')
    expect(page).to have_content "Welcome to the game Bob!"
  end

  scenario 'if no name is entered generic greeting appears' do
    visit '/start'
    expect(page).to have_content "Please enter your name:"
    fill_in('name', with: '')
    click_button('Start')
    expect(page).to have_content "Welcome to the game anonymous!"
  end

  scenario 'name' do
    visit '/start'
    click_button('Start')
    expect(page).to have_content "Welcome to the game anonymous!"
    # expect(page).to have_content "..."
  end

end


feature 'Playing game' do

  before(:each) do
   $game = nil
  end

  scenario '' do

  end

end

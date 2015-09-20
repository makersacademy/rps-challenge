require 'spec_helper'

feature 'Starting a new game' do 

  it 'i am asked to enter my name' do 
    visit '/'
    expect(page).to have_content "What's your name?"
  end

  it 'entering my name takes me to a new page with a greeting' do 
    visit '/'
    fill_in('name', :with => 'Dom')
    click_button('Submit')
    expect(page).to have_content "Hello Dom"
  end

  scenario 'not entering a name will ask for a name' do
    visit '/'
    fill_in('name', :with => '')
    click_button('Submit')
    expect(page).to have_content "Please enter a name"
  end

  scenario 'pressing start game takes me to the game page' do
    visit '/greeting'
    click_button('Start Game')
    expect(page).to have_content "Please choose your move"
  end

  scenario 'should have default option of rock' do 
    visit '/game'
    expect(find_field("rock")).to be_checked
  end

  scenario 'pressing play takes me to the results page' do
    visit '/game'
    click_button('Play')
    expect(page).to have_content "Computer"
  end

  scenario 'pressing play again takes me back to the game page' do 
    visit '/game'
    click_button('Play')    
    click_button('Play again')
    expect(page).to have_content "Please choose your move"
  end




end
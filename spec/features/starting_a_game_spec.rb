require 'spec_helper'

feature 'Starting a new game' do 

  it 'i am asked to enter my name' do 
    visit '/'
    expect(page).to have_content "Please enter your name"
  end

  scenario 'i can submit my name' do
    visit '/'
    expect(page).to have_selector("input[type='submit'][value='Submit']")
  end

  scenario 'entering my name takes me to a new page with a greeting' do 
    visit '/'
    fill_in('name', :with => 'Dom')
    click_button('Submit')
    expect(page).to have_content "Hello Dom"
  end

  scenario 'pressing submit takes me to the game page' do
    visit '/'
    fill_in('name', :with => 'Dom')
    click_button('Submit')
    expect(page).to have_content "pick your move"
  end

  scenario 'should have default option of rock' do 
    visit '/game'
    expect(find_field("rock")).to be_checked
  end

  scenario 'i can choose paper option' do 
    visit '/game'
    choose('paper')
    expect(find_field('paper')).to be_checked
  end

  scenario 'i can choose scissors option' do
    visit '/game'
    choose('scissors')
    expect(find_field('scissors')).to be_checked
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
    expect(page).to have_content "Pick another move"
  end




end
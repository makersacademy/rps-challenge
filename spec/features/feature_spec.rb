require_relative '../spec_helper.rb'

feature 'Starting a new game,' do

  scenario 'I am asked to enter my name.' do
    visit '/'
    expect(page).to have_content "Please enter your name."
  end

  scenario 'I hit submit with an empty name field.' do
    visit '/'
    fill_in('user_name', :with => '')
    click_button 'Submit'
    expect(page).to have_content 'Sorry, you must enter a name.'
  end

  scenario 'I want to see my name in lights because I\'m a narcissistic marketeer.' do
    visit '/'
    fill_in('user_name', :with => 'Dobby')
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors, Dobby!'
  end

  scenario 'I am asked whether I want to play the computer or another person with a browser.' do
    visit '/'
    fill_in('user_name', :with => 'Dobby')
    click_button 'Submit'
    expect(page).to have_link('Single player - against the computer')
    expect(page).to have_link('Multiplayer - against an opponent')
  end

end

feature 'In single player mode,' do

  before do
    visit '/'
    fill_in('user_name', :with => 'Dobby')
    click_button 'Submit'
    click_link 'Single player - against the computer'
    choose('rock_radio')
    click_button 'Submit'
  end

  scenario 'I want to be able to choose an RPS shape to play and to get a result.' do
    expect(page).to have_content 'beats'
  end

  scenario 'I want to be offered the chance to play again.' do
    expect(page).to have_content 'Play again'
  end

end

feature 'In multiplayer mode,' do

  before do
    visit '/'
    fill_in('user_name', :with => 'Dobby')
    click_button 'Submit'
    click_link 'Multiplayer - against an opponent'
    choose('rock_radio')
    click_button 'Submit'

    visit '/'
    fill_in('user_name', :with => 'Bobby')
    click_button 'Submit'
    click_link 'Multiplayer - against an opponent'
    choose('paper_radio')
    click_button 'Submit'
  end

  scenario 'I want to be able to choose an RPS shape to play and to get a result.' do
    expect(page).to have_content 'Bobby beats Dobby!'
  end

  scenario 'I want to be offered the chance to play again.' do
    expect(page).to have_button 'Play again'
  end

end

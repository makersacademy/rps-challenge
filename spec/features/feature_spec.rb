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

end

feature 'Playing the game,' do

  before do
    visit '/'
    fill_in('user_name', :with => 'Dobby')
    click_button 'Submit'
    choose('rock_radio')
    click_button 'Submit'
  end

  scenario 'I want to be able to choose an RPS shape to play and to get a result.' do
    expect(page).to have_content 'You chose rock and the computer chose'
  end

  xscenario 'I want to be offered the chance to play again.' do
    expect(page).to have_content 'You chose rock and the computer chose'
  end

end

require "spec_helper"

feature 'I can play against the computer' do
  scenario 'I can enter my name' do
    visit '/'
    click_link 'Play Against Computer'
    expect(page).to have_content "What's your name?"
    our_name = "Richard"
    fill_in "name", with: our_name
    click_button 'Submit'
    expect(page).to have_content "Hello #{our_name}"
  end
  scenario 'Gives default name if none submitted' do
    visit '/'
    click_link 'Play Against Computer'
    click_button 'Submit'
    expect(page).to have_content "Hello Mr Anonymous"
  end
  scenario 'I can select a hand to play' do
    visit '/'
    click_link 'Play Against Computer'
    click_button 'Submit'
    select "paper", :from => "choice"
    click_button 'Present Choice'
    expect(page).to have_content "Mr Anonymous presented paper"
  end
  scenario 'I can rematch' do
    visit '/'
    click_link 'Play Against Computer'
    click_button 'Submit'
    select "paper", :from => "choice"
    click_button 'Present Choice'
    select "scissors", :from => "choice"
    click_button 'Present Choice'
    expect(page).to have_content "Mr Anonymous presented scissors"
  end
  scenario 'I can quit to start page' do
    visit '/'
    click_link 'Play Against Computer'
    click_button 'Submit'
    click_button 'Quit'
    expect(page).to have_content "Play Against Computer"
  end
end

feature 'I can play against a human' do
  scenario 'We can both enter our names' do
    visit '/'
    click_link 'Play Against A Friend'
    expect(page).to have_content "What's your name?"
    our_name = "Richard"
    their_name = "Dave"
    fill_in "name1", with: our_name
    fill_in "name2", with: their_name
    click_button 'Submit'
    expect(page).to have_content "Richard vs Dave"
  end
  scenario 'Gives default names if none submitted' do
    visit '/'
    click_link 'Play Against A Friend'
    click_button 'Submit'
    expect(page).to have_content "Player 1 vs Player 2"
  end
  scenario 'We can both select a hand to play' do
    visit '/'
    click_link 'Play Against A Friend'
    click_button 'Submit'
    select "paper", :from => "choice1"
    click_button 'Present Choice'
    select "rock", :from => "choice2"
    click_button 'Present Choice'
    expect(page).to have_content "Paper wraps rock - Player 1 wins!"
  end
  scenario 'I can rematch' do
    visit '/'
    click_link 'Play Against A Friend'
    click_button 'Submit'
    select "paper", :from => "choice1"
    click_button 'Present Choice'
    select "rock", :from => "choice2"
    click_button 'Present Choice'
    select "scissors", :from => "choice1"
    click_button 'Present Choice'
    select "paper", :from => "choice2"
    click_button 'Present Choice' 
    expect(page).to have_content "Scissors cuts paper - Player 1 wins!"
  end
  scenario 'I can quit to start page' do
    visit '/'
    click_link 'Play Against A Friend'
    click_button 'Submit'
    click_button 'Submit'     
    click_button 'Quit'
    expect(page).to have_content "Play Against Computer"
  end
end

feature 'I can play Rock Paper Scissors Lizard Spock' do
  scenario 'I can enter my name' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    expect(page).to have_content "What's your name?"
    our_name = "Richard"
    fill_in "name", with: our_name
    click_button 'Submit'
    expect(page).to have_content "Hello #{our_name}"
  end
  scenario 'Gives default name if none submitted' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    click_button 'Submit'
    expect(page).to have_content "Hello Mr Anonymous"
  end
  scenario 'I can select a hand to play' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    click_button 'Submit'
    select "lizard", :from => "choice"
    click_button 'Present Choice'
    expect(page).to have_content "Mr Anonymous presented lizard"
  end
  scenario 'I can rematch' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    click_button 'Submit'
    select "lizard", :from => "choice"
    click_button 'Present Choice'
    select "Spock", :from => "choice"
    click_button 'Present Choice'
    expect(page).to have_content "Mr Anonymous presented Spock"
  end
  scenario 'I can quit to start page' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    click_button 'Submit'
    click_button 'Quit'
    expect(page).to have_content "Play Against Computer"
  end
end
require 'spec_helper'

feature 'I can play against the computer' do
  scenario 'I can enter my name' do
    visit '/'
    click_link 'Play Against Computer'
    expect(page).to have_content "What's your name?"
    our_name="Richard"
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
    select "paper", :from => "choice" 
    click_button 'Quit'
    expect(page).to have_content "Play Against Computer" 
  end  
end

feature 'I can play Rock Paper Scissors Lizard Spock' do
  scenario 'I can enter my name' do
    visit '/'
    click_link 'Play Rock Paper Scissors Lizard Spock'
    expect(page).to have_content "What's your name?"
    our_name="Richard"
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
    select "paper", :from => "choice" 
    click_button 'Quit'
    expect(page).to have_content "Play Against Computer" 
  end  
end
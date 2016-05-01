require 'spec_helper'

feature 'Your name' do
  scenario 'submitting names' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors' 
    sign_in_and_play
  end
end

feature 'Start a new game' do
  scenario 'starting a new game' do
    sign_in_and_play
    expect(page).to have_content "Mara's turn"
    # expect(page).to find_button("Start Game")
  end
end

feature 'Playing the game' do
  scenario "submit 'rock' to allow a win" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    choose('rock')
    click_button('Start Game')
    expect(page).to have_content "You chose: rock"
    expect(page).to have_content "Computer chose: scissors"
    expect(page).to have_content "Result: win"
  end
end

feature 'Result' do
  scenario 'result of the game' do
    sign_in_and_play
    click_button "Start Game"
    expect(page).to have_content "You chose: rock"
  end
end








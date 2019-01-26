require_relative 'web_helpers.rb'

feature 'Testing infrastructure' do

  scenario 'App can load and have content' do
    visit ('/')
    expect(page).to have_content 'Welcome, player'
  end

  scenario 'Can input and submit a player name' do
    enter_name_and_play
    expect(page).to have_content 'Rock, paper, scissors'
    expect(page).to have_content 'Test Name'
  end

  scenario 'Can select an option from Rock, Paper, and Scissors and display it' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content('You picked rock')
  end

  scenario 'Can display the computers choice' do
    srand 876
    enter_name_and_play
    click_button('Paper')
    click_button('See what the computer picked')
    expect(page).to have_content 'The computer picked: '
    expect(page).to have_content 'scissors'
    expect(page).to have_content 'YOU LOSE!'
  end

end

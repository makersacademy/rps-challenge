require 'spec_helper'
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play the game' do
  PLAY_SEED = 221563 # This is a option for scissors
  before do
    visit('/')
    fill_in 'name', with: 'Barri'
    click_button 'Submit'
  end
  # the marketeer will be presented the choices (rock, paper and scissors
  scenario 'Can see options : Rock paper scissors' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
    end
   # the marketeer can choose one option
   scenario 'Player can choose an options : Rock paper scissors' do
    click_button "Rock"
    expect(page).to have_content 'You chose Rock!'
  end
  #the game will choose a random option
  scenario ' game choose "Rock' do
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end
  # i want the game to choose a random option
  scenario 'game choose a random option' do
    srand(PLAY_SEED)
    click_button "Rock"
    expect(page).to have_content "Opponent chose Scissors!"
  end
  # I want to see if I win
context 'end game' do
  before do 
    srand(PLAY_SEED)
  end

  scenario 'I win' do
     # we make this seed so the computer always get scissors 
    click_button "Rock"
    expect(page).to have_content 'You win!'
  end

  scenario 'I lose' do
     # we make this seed so the computer always get scissors 
    click_button "Paper"
    expect(page).to have_content 'You lose!'
  end

  scenario 'I draw' do
    # we make this seed so the computer always get scissors 
   click_button "Scissors"
   expect(page).to have_content 'You draw!'
 end
end
  # we now set possible messages  for the computer to choose
  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end

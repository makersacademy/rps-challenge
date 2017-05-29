require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game of rock paper scissors' do

  before do
    visit '/'
    fill_in('name', with: 'Sam')
    click_button('Submit')
  end
  # As a marketeer
  # So I can play a game
  # I want to see the choices (rock, paper, scissors)"
  scenario 'see the move choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
# As a marketeer
# So I can play a game
# I want to choose either either rock, paper or scissors
  scenario 'choose an option' do
    click_button('Rock')
    expect(page).to have_content'You threw rock!'
  end
# As a marketeer
# So I can win or lose to an opponent
# The game will chose an option randomly
  scenario 'game choses option randomly' do
    click_button('Rock')
    message = find(:css, '#opponent').text
    expect(message_options).to include message
  end

  def message_options
    [:rock, :paper, :scissors].map {|option| "Your opponent threw #{option}!"}
  end

end

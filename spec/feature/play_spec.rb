require 'spec_helper'
#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  PLAYSEED = 221563

  # as a marketeer
  # so I can play a game
  # I want to see the shapes I can play
  before do
      visit '/'
      fill_in 'name', with: 'Dave'
      click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  # As a marketeer
  # so I can play a game
  # I want to choose a shape to play
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You choose Rock!'
  end

  # As a marketeer
  # so I can play a game
  # I want the game to choose a shape to play
  scenario 'Opponent choose a shape' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  # As a marketeer
  # so I can play a game
  # I want the game to choose a shape to play
  scenario 'choose a shape' do
    srand(PLAYSEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent choose Scissors!'
  end

  # As a marketeer
  # so I can play a game
  # I want to see if I win
 context 'end game' do
   before do
      srand(PLAYSEED)
   end

    scenario "I win" do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario "I lose" do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario "I draw" do
      click_button 'Scissors'
      expect(page).to have_content 'Draw!'
    end
 end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent choose #{shape.to_s.capitalize}!" }
  end
end

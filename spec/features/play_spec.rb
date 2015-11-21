require 'capybara'
require './spec/web_helpers.rb'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'presents with choice options:' do
  PLAY_SEED = 221563
  scenario 'allows to see options' do
    register_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'allows to choose one of the options' do
    register_and_play
    click_button('Rock')
    expect(page).to have_content('You have chosen Rock')
  end

  scenario 'computer chooses "Rock"' do
    register_and_play
    click_button('Rock')
    message = find(:css, "#opponent").text.strip
    expect(possible_messages).to include("Computer chose Rock!")
  end

  scenario 'computer chooses a random option' do
    register_and_play
    srand(PLAY_SEED)
    click_button('Rock')
    expect(page).to have_content("Computer chose Scissors!")
  end

  context 'result of game' do
    scenario 'I win' do
      register_and_play
      srand(PLAY_SEED)
      click_button('Rock')
      expect(page).to have_content "You win!"
    end
    scenario 'I lose' do
      register_and_play
      srand(PLAY_SEED)
      click_button('Paper')
      expect(page).to have_content "You lose!"
    end
    scenario 'draw' do
      register_and_play
      srand(PLAY_SEED)
      click_button('Scissors')
      expect(page).to have_content "Draw!"
    end
  end

  def possible_messages
    [:rock, :paper, :scissors].map {|choice| "Computer chose #{choice.to_s.capitalize}!"}
  end

end

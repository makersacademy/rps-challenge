require 'spec_helper'

feature "playing a game" do
  PLAY_SEED = 221563

  before do
    sign_in_and_play
  end
  #as a user,
  #so I can play a game
  #I want to see the shapes I can play
  scenario "See the attack options" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  # as a user,
  # so I can play a game,
  # I want to choose an attack to play
  scenario "choose an attackc" do
    click_button "Rock"
    expect(page).to have_content "Rocky picked Rock!"
  end

  # as a user,
  # so I can play a game
  # I want the game to choose an option
  scenario "game chooses 'Rock'" do
    click_button 'Rock'
    message = find(:css, "#computer").text
    expect(possible_messages).to include message
  end

  # as a user,
  # so I can play a game
  # I want the game to choose a random option
  scenario "game chooses a random option" do
    srand(PLAY_SEED)
    click_button "Rock"
    expect(page).to have_content "Computer chose Scissors!"
  end

  def possible_messages
    [:rock, :paper, :scissors].map {|shape| "Computer chose #{shape.to_s.capitalize}!"}
  end
end
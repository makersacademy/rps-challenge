# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# As a marketeer
# So I can play rock/paper/scissors
# I would like to choose one option

# As a marketeer
# So I can play rock/paper/scissors
# I would like my choice to acted upon by the game

require_relative '../spec_helper'

feature 'Play RPS game' do
  before do
    visit('/')
    fill_in :player_name, with: 'Alwin'
    click_button 'Submit'
  end

  scenario 'display RPS game choices' do
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'choice of RPS' do
    click_button 'rock'
    expect(page).to have_content 'rock selected!'
  end

  scenario 'opponent selects Rock' do
    click_button 'rock'

    display = find(:css, "#opposition").text

    expect(displayed_message).to include display
  end

  def displayed_message
    [:rock, :paper, :scissors].map {|choice|"They selected #{choice}!"}
  end

end

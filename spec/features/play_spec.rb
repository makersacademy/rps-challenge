require 'spec_helper'

PLAY_SEED = 221563

  feature 'playing a game' do

  before do
  visit ('/')
  fill_in 'name', with: 'Tim'
  click_button 'Submit'
end



  scenario 'see the rps options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'user can choose one of the options' do
  click_button 'Rock'
  expect(page).to have_content 'You selected Rock!'
  end



  # scenario 'game chooses "Rock"' do
  #   click_button "Rock"
  #
  #   message = find(:css, "#opponent").text
  #
  #   expect(possible_messages).to include message
  # end

  scenario 'game chooses a random option' do
    srand(PLAY_SEED)
    click_button "Rock"
    expect(page).to have_content 'Opponent chose Scissors'
  end

  context 'end game' do
    before do
    srand(PLAY_SEED)
    end

    scenario 'I win' do
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end

    scenario 'I lose' do
    click_button 'Paper'
    expect(page).to have_content 'You lose!'
  end

  scenario 'I draw' do
  click_button 'Scissors'
  expect(page).to have_content 'You draw!'
  end

end

  def possible_messages
    [:rock, :paper, :scissors].map{ |shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end
end

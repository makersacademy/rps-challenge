require 'spec_helper'

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



  scenario 'game chooses "Rock"' do
    click_button "Rock"

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end

  def possible_messages
    [:rock, :paper, :scissors].map {|shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end
end

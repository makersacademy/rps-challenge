require 'spec_helper'

feature '/play asks you to select a weapon' do
  before (:each) do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    visit '/new_game'
    visit '/play'
  end

  scenario 'open weapon page' do
    expect(page).to have_content("Choose your weapon")
  end

  scenario 'test rock button' do
    click_button 'rock'
    expect(page).to have_content("rock")
  end

  scenario 'test paper button' do
    click_button 'paper'
    expect(page).to have_content("paper")
  end

  scenario 'test scissors button' do
    click_button 'scissors'
    expect(page).to have_content("scissors")
  end

  scenario 'test lizard button' do
    click_button 'lizard'
    expect(page).to have_content("lizard")
  end

  scenario 'test spock button' do
    click_button 'spock'
    expect(page).to have_content("spock")
  end



end

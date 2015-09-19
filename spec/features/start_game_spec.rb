require 'spec_helper'

feature 'start a new game' do
  scenario "I can see what the webpage is about" do
    visit '/'
    expect(page).to have_content "Let's play Rock, Paper, Scissors."
  end

  scenario "I can register my name" do
    visit '/'
    fill_in('player_name', :with => 'Ana')
    click_button 'Start Game!'
    expect(page).to have_content "Welcome, Ana!"
  end

  scenario "Doesn't let me move on to the game page unless I enter my name" do
    visit '/'
    fill_in('player_name', :with => '')
    click_button 'Start Game!'
    expect(page).to have_content "Let's play Rock, Paper, Scissors."
  end

end

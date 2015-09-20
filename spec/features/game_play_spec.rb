require 'spec_helper'

feature 'register for new game' do
  scenario "I can see what the webpage is about" do
    visit '/'
    expect(page).to have_content "Let's play Rock Paper Scissors."
  end

  scenario "I can register my name" do
    visit '/'
    fill_in('player_name', :with => 'Ana')
    click_button 'Start Game!'
    expect(page).to have_content "What's your move, Ana?"
  end

  scenario "Doesn't let me move on to the game page unless I enter my name" do
    visit '/'
    fill_in('player_name', :with => '')
    click_button 'Start Game!'
    expect(page).to have_content "Let's play Rock Paper Scissors."
  end

  scenario "I can choose a move" do
    visit '/'
    fill_in('player_name', :with => 'Ana')
    click_button 'Start Game!'
    expect(page).to have_content "What's your move, Ana?"
  end
end

feature 'Starts a game ' do
  scenario "I can chose scissors" do
    visit '/new_game'
    click_link 'scissors'
    expect(page).to have_content "You chose scissors."
  end

    scenario "I can choose paper" do
      visit '/new_game'
      click_link 'paper'
      expect(page).to have_content "You chose paper."
    end

    scenario "I can choose rock" do
      visit '/new_game'
      click_link 'rock'
      expect(page).to have_content "You chose rock."
    end

    scenario "I can see the computer's choice" do
      visit '/new_game'
      click_link 'rock'
      expect(page).to have_content "The computer chose"
    end
end

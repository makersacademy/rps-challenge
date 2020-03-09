require './app.rb'
require_relative './web_helpers.rb'

feature 'testing infrastructure' do
  scenario 'testing framework is set up correctly' do
    visit ('/test')
    expect(page).to have_content "Testing"
  end
end


feature 'user can enter their name' do
  scenario 'user is prompted to input their name' do
    visit ('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'user can enter their name into a box' do
    visit ('/')
    name_submit
    expect(page).to have_content "John, are you ready to play?"
  end
end

feature 'player has three choices of play' do
  scenario 'user can pick scissors' do
    visit ('/')
    name_submit
    click_button 'Scissors'
  end

  scenario 'user can pick paper' do
    visit ('/')
    name_submit
    click_button 'Paper'
  end

  scenario 'user can pick stone' do
    visit ('/')
    name_submit
    click_button 'Stone'
  end
end

feature 'user competes with the CPU after making their choice' do
  scenario 'CPU picks random weapon as player chooses theirs' do
    visit ('/')
    name_submit_choice('scissors')
    # visit ('/game-summary')
    expect(page).to have_content "CPUs random choice will appear here"
  end

  feature 'game navigates to /game-summary after any choice by the player' do
    scenario 'player chooses scissors' do
      visit ('/')
      name_submit_choice('scissors')
      expect(page).to have_current_path('/game-summary')
    end
  end



end

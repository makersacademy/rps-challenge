require 'spec_helper'

feature 'name input', :type => feature do
  scenario "user creates a name" do
    sign_in_and_play
    expect(page).to have_text('Akram')
  end
end

feature 'allows you to pick options', :type => feature do
  scenario "user picks an option" do
    sign_in_and_play
    expect(page).to have_text('Pick one of the following options')
  end
end

feature 'shows the results of the game', :type => feature do
  scenario "selects Rock" do
    sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content('You')
  end
end

feature 'shows the results of the game', :type => feature do
  scenario "selects Paper" do
    sign_in_and_play
    find_button('Paper').click
    expect(page).to have_text('You')
  end
end

feature 'shows the results of the game', :type => feature do
  scenario "selects Scissors" do
    sign_in_and_play
    find_button('Scissors').click
    expect(page).to have_text('You')
  end
end

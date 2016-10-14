require 'spec_helper'
require_relative 'web_helpers'

feature 'Entering name' do
  scenario 'index page form' do
    visit '/'
    expect(page).to have_content "Enter your name to play"
  end

  scenario 'submiting name' do
    sign_in_and_play
    expect(page).to have_content 'Player: Bukowski'
  end
end

feature 'Computer player' do
  scenario 'play page has computer player too' do
    sign_in_and_play
    expect(page).to have_content 'Computer'
  end
end

feature 'Choosing "weapon"' do
  scenario "should be able to see options" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario "should be able to select 'weapon'" do
    sign_in_and_play
    choose('scissors')
    click_button('Submit')
    expect(page).to have_content 'Bukowski chose Scissors'
  end

  scenario "computer should pick a weapon" do
    sign_in_and_play
    choose('scissors')
    click_button('Submit')
    expect(page).to have_content 'Computer chose '
  end

end

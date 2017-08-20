require 'spec_helper'
require_relative './web_helper'

feature 'Home page', type: :feature do
  scenario "it says Welcome" do
    visit'/'
    expect(page).to have_text('Welcome to Rock, Paper, Scissors')
  end

  scenario 'it shows your name once signed in' do
    sign_in_and_play
    expect(page).to have_text('Hello Lizzie - please choose an action to play')
  end

  scenario 'has rock paper scissors buttons' do
    sign_in_and_play
    expect(page).to have_selector("input[value='Rock']")
    expect(page).to have_selector("input[value='Paper']")
    expect(page).to have_selector("input[value='Scissors']")
  end

  scenario 'a game is played' do
    sign_in_and_play
    click_button('Rock')
    # @outcome = ['Rock','Scissors']
    expect(page).to have_content("Your selection is Rock")
  end

  scenario 'button to play again' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_selector("input[value='Play Again']")
  end
end

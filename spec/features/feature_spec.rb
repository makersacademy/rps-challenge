require 'spec_helper'
require_relative './web_helper'

feature 'Home page', type: :feature do
  scenario "it says Welcome" do
    visit'/'
    expect(page).to have_text('Welcome to Rock, Paper, Scissors')
  end

  scenario 'it shows your name once signed in' do
    sign_in_and_play
    expect(page).to have_text('Hello Lizzie - please choose Rock, Paper or Scissors to play')
  end
end

require 'spec_helper'
require_relative 'web_helper'

feature 'computer makes selection' do
  scenario 'computer makes a selection' do
    srand(3)
    visit "/"
    fill_in :player_name, with: "John"
    click_button "Leggo!"
    click_button "Rock"
    expect(page).to have_content 'AIcomp chose Scissors'
  end
end

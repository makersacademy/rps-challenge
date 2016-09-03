require 'spec_helper'

feature 'enter_name' do
  scenario 'player enters name' do
    expect(page).to have_content("Welcome to rock, paper, scissors, Alfie!")
  end
end

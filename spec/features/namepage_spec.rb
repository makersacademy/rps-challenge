require 'spec_helper'

feature 'Entering name of player' do

  scenario 'player prompted for name' do
    visit('/')
    expect(page).to have_content("Please enter your name below.")
  end
end

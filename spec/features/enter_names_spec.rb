require 'spec_helper'

feature 'Single player' do
  scenario 'submitting name' do
  	sign_in_single_player
    expect(page).to have_content 'Dan vs. Computer'
  end
end

feature 'Multiplayer' do
  scenario 'submitting names' do
  	sign_in_multiplayer
    expect(page).to have_content 'Dan vs. Ed'
  end
end
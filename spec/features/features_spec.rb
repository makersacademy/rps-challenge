require 'spec_helper'

feature 'Your name' do
  scenario 'submitting names' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors' 
    sign_in_and_play
  end
end

feature 'Play' do
  scenario 'starting a new game' do
    sign_in_and_play
    expect(page).to have_content "Mara's turn"
    expect(page).to have_content "Start Game"
  end
end



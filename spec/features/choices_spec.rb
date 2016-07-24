require 'spec_helper'

feature 'Game play' do
before do
  register_and_play  
end
  scenario 'Human player presented with hand gestures choice' do
    register_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'

  end
end

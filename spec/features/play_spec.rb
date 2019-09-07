require 'spec_helper'

feature 'Play' do
  scenario 'Display options, Rock Paper Scissors' do
    register_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end

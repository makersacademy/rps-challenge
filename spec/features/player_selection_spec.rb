require './app/app.rb'
require 'spec_helper'
feature 'player selection of Rock Paper or Scissors' do
  scenario 'will show me options to select Rock' do
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    expect(page).to have_button("ROCK")
  end

  scenario 'will show me options to select Paper' do
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    expect(page).to have_button("PAPER")
  end

  scenario 'will show me options to select Scissors' do
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    expect(page).to have_button("SCISSORS")
  end
end
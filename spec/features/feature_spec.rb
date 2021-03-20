require 'spec_helper'

feature 'the homepage' do
  scenario 'the hompage has the title rock paper, scissors' do
    visit '/'
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end

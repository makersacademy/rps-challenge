require 'spec_helper'

feature 'start screen' do
  scenario 'correctly displays text' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors... With Kittens!'
  end
end

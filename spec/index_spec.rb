require 'spec_helper'

feature 'Homepage' do
  scenario 'Naviagate to homepage' do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors! Enter your name to begin: ")
  end
end

require './app'
require 'spec_helper'

feature do
  scenario 'There should be a header on the homepage' do
    visit('/')
    expect(page).to have_text("Let's play Rock, Paper, Scissors!")
  end
end

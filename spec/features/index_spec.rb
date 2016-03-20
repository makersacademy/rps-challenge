require 'spec_helper'

feature '/index' do

  scenario 'opens with a welcome page' do
    visit('/')
    expect(page).to have_content('Welcome to Scissors-Paper-Rock.')
  end

  scenario 'can receive name parameter' do
    visit_and_register
    expect(page).to have_content('Okay Frank, let\'s play.')
  end

end

require 'capybara/rspec'
#require 'rspec-sinatra'
#require 'spec_helper'

feature 'One-player game' do
  scenario 'starting a game' do
    visit '/'
    expect(page).to have_content 'Name:'
    fill_in 'name_box', with: 'Theo'
    click_on 'play'
    expect(page).to have_content 'Pick your weapon:'
    choose 'rock'
    #fill_in 'choice', with: 'rock'
    click_on 'Submit'
    expect(page).to have_content 'Result:'
    click_on 'play again?'
    expect(page).to have_content 'Name:'
  end

end

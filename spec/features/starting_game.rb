require 'spec_helper'

feature 'Starting a New Game' do
  
  scenario 'introduces the game' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end

  scenario 'requires a name to be input' do 
    visit '/'
    fill_in 'name',with: 'Christian'
    click_button('Submit')
    expect(page).to have_content 'Welcome Christian'
  end

end
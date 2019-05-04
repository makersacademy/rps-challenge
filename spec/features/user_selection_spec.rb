require 'spec_helper'

feature 'when user selects play and is presented with choices' do
  scenario 'when user clicks play, it displays options' do
    register
    click_button 'Play'
    expect(page).to have_content('Rock', 'Paper', 'Scissors')
    
  end
end

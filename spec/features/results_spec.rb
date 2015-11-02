require 'spec_helper'

feature 'Returns the winner' do
  scenario 'Two player' do
  	visit('/')
    sign_in_multiplayer
    click_button('Paper')
    click_button('Scissors')
    expect(page).to have_content 'Ed wins with scissors!'
  end
end
require 'spec_helper'

feature 'Returns a draw' do
  scenario 'Two player' do
  	visit('/')
    sign_in_multiplayer
    click_button('Paper')
    click_button('Paper')
    expect(page).to have_content 'Draw!'
  end
end
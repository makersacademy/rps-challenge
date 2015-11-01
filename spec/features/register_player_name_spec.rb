require 'spec_helper'

feature 'register player' do
  scenario 'fill in form with name' do
    visit('/')
    fill_in(:player_name, with: 'Radu')
    click_button('Submit')
    expect(page).to have_content('Radu')
  end
end

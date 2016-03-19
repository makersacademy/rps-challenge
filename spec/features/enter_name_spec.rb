require 'spec_helper'

feature 'Enter name' do
  scenario 'Allows player to enter name and see it on page' do
    visit '/'
    fill_in 'player1_name', :with => "Mario"
    click_button 'Start game'
    expect(page).to have_content("Mario")
  end
end

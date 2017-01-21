require 'spec_helper'

feature "Register player's name" do
  scenario 'to see it (in lights) before playing' do
    visit('/')
    fill_in :player_01_name, with: 'Stefan'
    click_button 'submit'
    expect(page).to have_content('Hey, Stefan!')
  end
end

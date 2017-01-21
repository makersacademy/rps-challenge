require 'spec_helper'

feature 'allows player to enter name' do
  scenario 'player enters name' do
    visit '/'
    fill_in('player_name', with: 'Mephistopheles')
    click_button('Submit')
    expect(page).to have_content 'Mephistopheles'
  end
end

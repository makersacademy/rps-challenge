require 'spec_helper'

feature 'enter name' do

  scenario 'player enters name on homepage' do
    visit '/'
    fill_in :name, with: 'Abigail'
    click_button 'Play!'
    expect(page).to have_content 'Choose wisely, young Abigail...'
  end

end

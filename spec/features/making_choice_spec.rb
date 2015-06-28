require 'spec_helper'

feature 'making a choice' do

  scenario 'after making a choice you see your choice' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    click_button('Choose')
    expect(page).to have_content 'Nicola, you chose Rock'
  end

end

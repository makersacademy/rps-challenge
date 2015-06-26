require 'spec_helper'

feature 'Starting a new game' do

  scenario 'asks for your name' do
    visit '/'
    fill_in('name', with: 'Simon')
    click_button('Submit')
    expect(page).to have_content('Great! Hi there Simon!')
  end

  scenario 'can select rock'
    visit '/'
    fill_in('name', with: 'Simon')
    click_button('Submit')
    click_button('Rock')


  end



end
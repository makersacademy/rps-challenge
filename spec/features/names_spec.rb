require 'spec_helper'

feature 'names' do
  scenario 'enter names' do
    visit "/"
    fill_in(:player, with: 'Ewan')
    click_button('GET ON IT')
    expect(page).to have_content 'Welcome Ewan!'
  end
end

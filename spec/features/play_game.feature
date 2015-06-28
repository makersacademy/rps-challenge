require 'spec_helper'

feature 'Stargting a new gmae' do
  scenario 'It can receive a name' do
    visit '/'
    fill_in 'name', with: 'Kirsten'
    click_button('Submit')
    expect(page).to have_content "Welcome, Kirsten!"
  end
end

require './spec/spec_helper'

feature 'registering a name' do
  scenario 'inputting a name and seeing it' do
    visit '/'
    fill_in 'name', with: 'George'
    click_button 'Submit'
    expect(page).to have_content 'George'
  end
end

require 'spec_helper'

feature 'homepage' do
  scenario 'require user to enter name' do
    visit '/'
    fill_in('username', with: 'John')
    click_button 'Begin'
    expect(page).to have_content 'Hello John!'
  end
end

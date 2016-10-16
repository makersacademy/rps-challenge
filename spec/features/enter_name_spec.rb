require "spec_helper"

RSpec.feature 'Enter name', :type => :feature do
  scenario 'submitting name' do
    visit('/')
    fill_in :player, :with => 'Rocky'
    click_button 'Play!'
    expect(page).to have_content 'Welcome Rocky!'
  end
end

require 'spec_helper'

RSpec.feature "player sets their name", :type => :feature do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Amanda'
    click_button("Play!")
    expect(page).to have_content 'Welcome Amanda!'
  end
end

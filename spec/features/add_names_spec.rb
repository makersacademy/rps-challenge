require 'spec_helper'

feature 'add_names_forms' do

  scenario 'one player name form' do
    visit '/'
    fill_in('Player Name:', with: 'Isaac')
    click_button 'Play'
    expect(page).to have_content "Isaac vs. Computer"
  end

end

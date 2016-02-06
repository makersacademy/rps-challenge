require 'spec_helper'

feature 'ENTER NAMES' do
  scenario '-> lets the human player enter his name and see it on-screen' do
    fill_in :player_name, with: 'Marcus'
    expect(page).to have_content 'Marcus'
  end

end

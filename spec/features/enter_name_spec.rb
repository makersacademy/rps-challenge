require 'spec_helper.rb'

feature 'Adding a player' do

  scenario '#enter player name' do
    visit '/'
    fill_in(:player_1, with: 'Lawrence')
    click_button 'Submit'
    expect(page).to have_content('Welcome Lawrence')
  end
end

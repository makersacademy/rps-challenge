require 'spec_helper'

feature 'add_names_forms' do

  scenario 'one player name form' do
    visit '/'
    click_button 'One Player'
    fill_in('Player Name:', with: 'Isaac')
    click_button 'Play'
    expect(page).to have_content "Isaac vs. Computer"
  end

  scenario 'two player name form' do
    visit '/'
    click_button 'Two Player'
    fill_in('Player 1:', with: 'Isaac')
    fill_in('Player 2:', with: 'Cindy')
    click_button 'Play'
    expect(page).to have_content "Isaac vs. Cindy"
  end

end

require 'spec_helper'

feature 'results' do

  scenario 'winning' do
    lawrence_wins
    click_button 'PLAY'
    expect(page).to have_content('Lawrence')
  end
end

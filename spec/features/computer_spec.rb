require 'spec_helper'
require 'web_helper'

feature 'Computer choice' do
  scenario 'computer generates a random choice' do
    srand(67829)
    register_and_play
    click_button 'Rock'
    expect(page).to have_content ('Computer played paper')
  end
end

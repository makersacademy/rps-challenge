require 'spec_helper'

feature 'player name submit', :type => :feature do
  scenario 'P1 name entered' do
    sign_in_and_play
    expect(page).to have_content("James vs Computer")
  end
end

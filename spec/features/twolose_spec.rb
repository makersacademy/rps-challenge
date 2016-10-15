require 'spec_helper'
require '././app.rb'
RSpec.feature 'lost', :type => :feature do
  scenario 'player1 has won' do
    sign_in_and_play2
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_text "Steve has won!"
  end
end

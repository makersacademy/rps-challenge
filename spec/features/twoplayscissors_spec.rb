require 'spec_helper'
require '././app.rb'

RSpec.feature 'lost', :type => :feature do
  scenario 'player2 is playing' do
    sign_in_and_play2
    click_button 'Scissors'
    expect(page).to have_text "Emma is playing"
  end
end

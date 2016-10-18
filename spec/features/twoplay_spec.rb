require 'spec_helper'
require '././app.rb'

RSpec.feature 'lost', :type => :feature do
  scenario 'player1 is playing' do
    sign_in_and_play2
    expect(page).to have_text "Steve is playing"
  end
end

# in spec/features/rps_game_start_spec.rb
require 'spec_helper'

feature 'rps_game_start: RPS game start' do

  before do
    visit '/'
  end

  scenario '1. has greeting' do
    expect(page).to have_content('Rock Paper Scissors')
  end
  scenario '2. has single player button' do
    expect(page).to have_button('One player')
  end
end

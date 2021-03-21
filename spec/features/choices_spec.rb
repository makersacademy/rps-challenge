require 'spec_helper'

feature 'Possible moves' do
  scenario 'Rock, paper, and scissors are available as options' do
    sign_in_and_start_game
    find_by_id('rock')
    find_by_id('paper')
    find_by_id('scissors')
  end
end

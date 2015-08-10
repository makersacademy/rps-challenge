require 'spec_helper'

describe RoshamboWeb do
  feature 'selecting a move for game' do
    scenario '3 move options are displayed' do
      visit '/welcome'
      expect(page).to have_select('move', :options => ['Rock','Scissors', 'Paper'])
    end
  end
end
require 'spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_link "Start New Game"
  end

end

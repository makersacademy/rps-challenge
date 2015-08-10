require 'spec_helper'

feature 'Playing a game' do
  before :each do
    visit '/'
    click_on 'New Game'
    click_on 'Submit'
  end
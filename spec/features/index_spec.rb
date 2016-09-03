require 'spec_helper'
require_relative '../../app'

feature 'enter_name' do
  scenario 'player enters name' do
    sign_in_and_play
    expect(page).to have_content("Welcome to rock, paper, scissors, Alfie!")
  end
end

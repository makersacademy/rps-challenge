require 'spec_helper'
require './lib/player'

feature 'enter_names' do
  scenario 'visiting web page' do
    enter_names_and_play
    expect(page).to have_text("Player_1")
    expect(page).to have_text("Player_2")
  end
end

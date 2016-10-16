require 'spec_helper'
require './rps.rb'

RSpec.feature 'Route /choose-weapon', type: :feature do
  scenario 'computer greets player' do
    sign_in_and_play
    expect(page).to have_text('Welcome, Frodo!')
  end

  scenario 'user enter their weapon of choice' do
    sign_in_and_play
    choose('scissors')
    click_button('Fight!')
  end
end

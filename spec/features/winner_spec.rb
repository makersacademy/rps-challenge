require 'spec_helper'
require './rps.rb'

RSpec.feature 'Route /winner', type: :feature do
  scenario 'computer greets winner' do
    sign_in_and_play
    choose('rock')
    click_button('Fight!')
    expect(page).to have_text('The battle is finished')
  end
end

require 'spec_helper'
require '././app.rb'

RSpec.feature 'name', :type => :feature do
  scenario 'entering name' do
      sign_in_and_play
    expect(page).to have_text 'Bob is playing'
  end
end

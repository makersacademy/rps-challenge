require 'spec_helper'
require 'game'

feature 'Homepage' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("Whats your name?")
  end
end

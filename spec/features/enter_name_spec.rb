require './app.rb'
require 'spec_helper'

RSpec.feature "Starting a new game", :type=> :feature do
  scenario "Users enter their name" do
    visit '/'
    fill_in 'name', with: 'Mal'
    click_button 'Submit'
    expect(page).to have_text('Mal')
  end
end

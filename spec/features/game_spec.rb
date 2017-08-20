require_relative '../web_helper'
require './app/rps_web.rb'
require 'capybara-screenshot/rspec'
require 'capybara/rspec'

RSpec.feature "Game page", type: :feature do
  scenario 'displays players name' do
    register_name_submit
    expect(page).to have_text "Alfonso"
  end
  scenario 'displays button choices' do
    register_name_submit
    expect(page).to have_field 'choice'
  end
  scenario "When I submit 'Rock' I am told if I have won" do
    comp = double("Computer")
    allow_any_instance_of(Computer).to receive(:choice).and_return('scissors')
    expect(page).to have_content "The result is .... You won"
  end
end

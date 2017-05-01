require_relative '../../app'
require 'capybara'
require 'capybara/rspec'
require 'spec_helper'

feature RPS do
  it 'has a banner when the homescreen is loaded' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end
end

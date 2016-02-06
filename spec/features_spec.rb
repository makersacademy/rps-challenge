require 'spec_helper'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'tilt/erb'


  feature 'user can play rock, paper, scissors..' do

    before do
      include Capybara::DSL
      Capybara.default_driver = :selenium
    end

    scenario 'user can enter their name' do
    sign_in
    expect(page).to have_content "Player Name = Reiss"
    end

  end
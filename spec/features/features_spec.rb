require 'spec_helper'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'tilt/erb'
require './lib/computer.rb'


  feature 'user can play rock, paper, scissors..' do

    before do
      include Capybara::DSL
      Capybara.default_driver = :selenium
    end

    scenario 'user can enter their name' do
    sign_in
    expect(page).to have_content "Player Name = Reiss"
    end

    scenario 'page has buttons that allows the user to select a move' do
    sign_in
    click_button('Rock')
    end

    scenario 'see what move the computer played' do
    sign_in
    click_button("Rock")
    expect(page).to have_content "The Computer Played"
    end

    scenario 'player can win in a game' do
    sign_in
    click_button('Rock')
    expect(page).to have_content "Congratulations! You have won this round!"
    end

  end
require 'spec_helper'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'tilt/erb'
require './lib/computer.rb'


  feature 'user can play rock, paper, scissors..' do

    let(:computer){double :computer}

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

    scenario 'see what move the computer played' do
    sign_in
    click_button("Paper")
    expect(page).to have_content "You Played Paper"
    end

    scenario 'player plays Rock & either wins or looses' do
    sign_in
    click_button('Rock')
    expect(page).to have_content "Game Result:"
    end

    scenario 'player plays Paper & either wins or looses' do
    sign_in
    click_button('Paper')
    expect(page).to have_content "Game Result:"
    end

    scenario 'player plays Scissors & either wins or looses' do
    sign_in
    click_button('Scissors')
    expect(page).to have_content "Game Result:"
    end

    scenario 'user can play another round if they want to' do
    sign_in
    click_button('Scissors')
    click_button('Play Again')
    expect(page).to have_content "Player Name = Reiss"
    end



  end
# coding: utf-8

require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Fills in player name' do
  scenario 'players can fill in their names, submit a form, and see those names on-screen' do
    visit("/")
    fill_in :name1 , with: "Gawain"
    click_button "Submit"
    visit("/name")
    expect(page).to have_content "Player: #{name}!"
  end 
end 

feature 'Game' do
  scenario 'can choose one of three options' do
    visit("/game")
    player_move = 'rock'
    computer_move = 'paper'
    expect(page).to have_content "Computer Wins!!!"
  end 
end 


  # be presented the choices (rock, paper and scissors)
  # the marketeer can choose one option
  # the game will choose a random option
  # a winner will be declared
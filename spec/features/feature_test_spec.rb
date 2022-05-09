# coding: utf-8

require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Fills in player name' do
  scenario 'players can fill in their names, submit a form, and see those names on-screen' do
    visit("/")
    name1 = "Gawain"
    fill_in :name1 , with: name1
    click_button "Submit"
    expect(page).to have_content "Player: #{name1}!"
  end 
end 

feature 'Game' do
  scenario 'can choose one of three choices' do
    visit("/name")
    expect(page).to have_button('submit')
  end

  scenario 'can choose a winner based on players choice' do
    visit("/game")
    @player_move = 'rock'
    @computer_move = 'paper'
    expect(page).to have_content "I chose paper. Paper wraps rock. I win."
  end 
end 


  # be presented the choices (rock, paper and scissors)
  # the marketeer can choose one option
  # the game will choose a random option
  # a winner will be declared
require 'capybara/rspec'
require './lib/player'
require './lib/cpu'
require './lib/game_logic'

feature "A game of Rock, Paper, Scissors can be played" do

  scenario "Game is tied" do
    player = Player.new "Rock"
    cpu = CPU.new
    allow(cpu).to receive (:choice) { "Rock" }
    expect(Game_Logic.new.result cpu, player).to eq("It's a tie")
  end

  scenario "Paper beats Rock" do
    player = Player.new "Paper"
    cpu = CPU.new
    allow(cpu).to receive (:choice) { "Rock" }
    expect(Game_Logic.new.result cpu, player).to eq("Player wins")
  end

  scenario "Scissors beats Paper" do
    player = Player.new "Scissors"
    cpu = CPU.new
    allow(cpu).to receive (:choice) { "Paper" }
    expect(Game_Logic.new.result cpu, player).to eq("Player wins")
  end

  scenario "Rock beats Scissors" do
    player = Player.new "Scissors"
    cpu = CPU.new
    allow(cpu).to receive (:choice) { "Rock" }
    expect(Game_Logic.new.result cpu, player).to eq("CPU wins")
  end

end



require './app'
require './spec/features/web_helper'
feature RockPaperScissors do
  subject(:game) { Game.new(p1, p2) }
  let(:p1) { double(:player) }
  let(:p2) { double(:player) }

  scenario 'Page welcomes players' do
    visit '/'
    expect(page).to have_content 'Welcome to ROCK - PAPER - SCISSORS!!!! WOOOOOOO'
  end

  scenario 'p1 can enter name' do
    sign_in_and_play
    expect(page).to have_content "Quentin, welcome to your game of ROCK - PAPER - SCISSORS!"
  end

  # scenario 'rock button sets player move to Rock' do
  #   sign_in_and_play
  #   allow(p1).to receive(:move).and_return("Rock")
  #   Game.create(p1, p2)
  #   Game.instance.p1.move("Rock")
  #   click_button "Rock"
  #   expect(Game.instance.p1.move).to eq 'Rock'
  # end
  #
  # scenario 'paper button sets player move to Paper' do
  #   sign_in_and_play
  #   all? { |e|  }ow(p1).to receive(:move).and_return("Paper")
  #   Game.create(p1, p2)
  #   Game.instance.p1.move("Paper")
  #   click_button "Paper"
  #   expect(Game.instance.p1.move).to eq 'Paper'
  # end
  #
  # scenario 'paper button sets player move to Paper' do
  #   sign_in_and_play
  #   allow(p1).to receive(:move).and_return("Scissors")
  #   Game.create(p1, p2)
  #   Game.instance.p1.move("Scissors")
  #   click_button "Scissors"
  #   expect(Game.instance.p1.move).to eq 'Scissors'
  # end
end

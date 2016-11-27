require 'rps_game'
require 'rps_player'

feature Game do

  subject(:game) { described_class.new(player, computer) }

  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  let(:player_choice) { double(:player_choice) }
  let(:computer_choice) { double(:computer_choice) }

  scenario 'The game displays a winner' do
    sign_in
    visit '/result'
    expect(page).to have_content('wins')
  end

  scenario 'Stores player\'s and computer\'s answers' do
    visit '/result'
    expect(game.choices(player_choice, computer_choice)).to eq [player_choice, computer_choice]
  end

  describe 'Compares player\'s and computer\'s answers' do
    scenario 'paper beats rock' do
      visit '/result'
      game.choices('Paper', 'Rock')
      expect(game.player_win?).to eq true
    end
    scenario 'rock beats scissors' do
      visit '/result'
      game.choices('Rock', 'Scissors')
      expect(game.player_win?).to eq true
    end
    scenario 'scissors beats paper' do
      visit '/result'
      game.choices('Scissors', 'Paper')
      expect(game.player_win?).to eq true
    end

    scenario 'it\'s a draw' do
      visit '/result'
      game.choices('Rock', 'Rock')
      expect(game.draw?).to eq true
    end

    scenario 'it\'s a draw' do
      visit '/result'
      game.choices('Paper', 'Paper')
      expect(game.draw?).to eq true
    end

    scenario 'it\'s a draw' do
      visit '/result'
      game.choices('Scissors', 'Scissors')
      expect(game.draw?).to eq true
    end
  end

  scenario 'Outputs winner\'s name' do
    visit '/result'
    allow(player).to receive(:name).and_return("Kornelia")
    allow(game).to receive(:player_win?).and_return true
    expect(game.print_winner).to eq "Kornelia"
  end

end

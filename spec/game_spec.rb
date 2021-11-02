require 'game'
require 'computer'
require 'player'
require 'controller'

describe Game do

  let(:player_1) { double('player_1', :name => 'player_1') }
  let(:player_2) { double('player_2', :name => 'player_2') }
  let(:controller) { Controller.new }

  describe 'player selects rock' do

    before { allow(player_1).to receive(:weapon) { 'rock' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:weapon) { 'scissors' }
      expect(controller.new_game(player_1, player_2)).to eq :win
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:weapon) { 'rock' }
      expect(controller.new_game(player_1, player_2)).to eq :draw
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:weapon) { 'paper' }
      expect(controller.new_game(player_1, player_2)).to eq :lose
    end

  end

  describe 'player selects paper' do

    before { allow(player_1).to receive(:weapon) { 'paper' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:weapon) { 'scissors' }
      expect(controller.new_game(player_1, player_2)).to eq :lose
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:weapon) { 'rock' }
      expect(controller.new_game(player_1, player_2)).to eq :win
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:weapon) { 'paper' }
      expect(controller.new_game(player_1, player_2)).to eq :draw
    end

  end

  describe 'player selects scissors' do

    before { allow(player_1).to receive(:weapon) { 'scissors' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:weapon) { 'scissors' }
      expect(controller.new_game(player_1, player_2)).to eq :draw
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:weapon) { 'rock' }
      expect(controller.new_game(player_1, player_2)).to eq :lose
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:weapon) { 'paper' }
      expect(controller.new_game(player_1, player_2)).to eq :win
    end

  end

end
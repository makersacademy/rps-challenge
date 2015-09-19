require 'game'

describe Game do

  describe "play" do
    it 'Player wins when player choose rock and computer choose scissors' do
      computer_player = double(:fake_computer_player, choice:'scissors'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :rock
      expect(subject.play(player_choice,computer_choice)).to eq('Player1 wins!')
    end

    it 'Player wins when player choose scissors and computer choose paper' do
      computer_player = double(:fake_computer_player, choice:'paper'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :scissors
      expect(subject.play(player_choice,computer_choice)).to eq('Player1 wins!')
    end

    it 'Player wins when player choose paper and computer choose rock' do
      computer_player = double(:fake_computer_player, choice:'rock'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :paper
      expect(subject.play(player_choice,computer_choice)).to eq('Player1 wins!')
    end

    it 'Game is a draw when both players choose rock' do
      computer_player = double(:fake_computer_player, choice:'rock'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :rock
      expect(subject.play(player_choice,computer_choice)).to eq('Draw!')
    end

    it 'Game is a draw when both players choose paper' do
      computer_player = double(:fake_computer_player, choice:'paper'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :paper
      expect(subject.play(player_choice,computer_choice)).to eq('Draw!')
    end

    it 'Game is a draw when both players choose scissors' do
      computer_player = double(:fake_computer_player, choice:'scissors'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :scissors
      expect(subject.play(player_choice,computer_choice)).to eq('Draw!')
    end

    it 'Player looses when player choose rock and computer choose paper' do
      computer_player = double(:fake_computer_player, choice:'paper'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :rock
      expect(subject.play(player_choice,computer_choice)).to eq('Compt wins!')
    end

    it 'Player looses when player choose paper and computer choose scissors' do
      computer_player = double(:fake_computer_player, choice:'scissors'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :paper
      expect(subject.play(player_choice,computer_choice)).to eq('Compt wins!')
    end

    it 'Player looses when player choose scissors and computer choose rock' do
      computer_player = double(:fake_computer_player, choice:'rock'.to_sym)
      computer_choice = computer_player.choice
      player_choice = :scissors
      expect(subject.play(player_choice,computer_choice)).to eq('Compt wins!')
    end

  end

end

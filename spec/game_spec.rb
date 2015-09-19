require 'game'

describe Game do

  describe "#play" do
    it 'Player wins when player choose rock and computer choose scissors' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Joe wins!')
    end

    it 'Player wins when player choose paper and computer choose rock' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Joe wins!')
    end

    it 'Player wins when player choose scissors and computer choose paper' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Joe wins!')
    end

    it 'End in a draw when both players choose rock' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Draw!')
    end

    it 'End in a draw when both players choose paper' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Draw!')
    end

    it 'End in a draw when both players choose scissors' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Draw!')
    end

    it 'Computer wins when player choose rock and computer choose paper' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Comp wins!')
    end

    it 'Computer wins when player choose paper and computer choose scissors' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Comp wins!')
    end

    it 'Computer wins when player choose scissors and computer choose rock' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      player_choice = human_player.choice
      computer_choice = computer_player.choice
      expect(subject.play(human_player,computer_player)).to eq('Comp wins!')
    end

  end

end

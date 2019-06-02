require './lib/game.rb'

describe Game do
  let(:game) { Game.new(player) }
  let(:player) { double(:player, :choice => player_choice) }
  let(:player_choice) { double(:player_choice) }

  context '#player' do
    it 'gets the player' do
      expect(game.player).to eq(player)
    end
  end

  context '#play' do
    it 'gets the player\'s choice' do
      expect(game.move('rock')).to eq(player.choice)
    end

    it 'gets the correct image relating to the choice \'rock\'' do
      expect(game.image_selector('rock')).to eq('/images/rock.png')
    end

    it 'gets the correct image relating to the choice \'paper\'' do
      expect(game.image_selector('paper')).to eq('/images/paper.png')
    end

    it 'gets the correct image relating to the choice \'scissors\'' do
      expect(game.image_selector('scissors')).to eq('/images/scissors.png')
    end

    it 'gets the correct image relating to a choice other than the suggested three' do
      expect(game.image_selector('anythingElse')).to eq('/images/confused.png')
    end
  end

  context '#result' do
    it 'can give the correct result \'WIN\'' do
      expect(game.result('Paper', 'Rock')).to eq("WIN")
    end

    it 'can give the correct result \'DRAW\'' do
      expect(game.result('Paper', 'Paper')).to eq("DRAW")
    end

    it 'can give the correct result \'LOSE\'' do
      expect(game.result('Paper', 'Scissors')).to eq("LOSE")
    end
  end
end

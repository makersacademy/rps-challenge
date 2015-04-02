require 'player'

describe Player do
  let(:player) { described_class.new 'bob' }
  context 'when created' do
    it 'has a name' do
      expect(player.name).to eq 'bob'
    end
  end

  context 'after been created' do
    it 'knows when is ready to play' do
      player.chose :paper
      expect(player).to be_ready
    end

    it 'raises an error if the element is not available' do
      expect { player.chose :gun }.to raise_error
    end

    it 'raises an error if the player chose an element twice' do
      player.chose :scissors
      expect { player.chose :paper }.to raise_error
    end

    it 'can chose an element' do
      player.chose :rock
      expect(player.chosed_element).to eq :rock
    end

    it 'can add wins' do
      player.win
      expect(player.wins).to eq 1
    end

    it 'can add loses' do
      player.lose
      expect(player.loses).to eq 1
    end

    it 'can add draws' do
      player.draw
      expect(player.draws).to eq 1
    end

    it 'resets chosed element after a win' do
      player.win
      expect(player.chosed_element).to be_nil
    end

    it 'resets chosed element after a lose' do
      player.lose
      expect(player.chosed_element).to be_nil
    end

    it 'resets chosed element after a draw' do
      player.draw
      expect(player.chosed_element).to be_nil
    end
  end
end
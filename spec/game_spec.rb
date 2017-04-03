require 'game'

describe Game do
  subject(:game) { described_class.new(user, computer)}
  let(:user) { double(:user) }
  let(:computer) { double(:computer) }

  it 'returns player1' do
    expect(game.player1).to eq user
  end

  it 'retusn player2' do
    expect(game.player2).to eq computer
  end

  it 'has a hash of winnig choices' do
    expect(game.win_map).to be_instance_of Hash
  end

  describe '#result' do
    context "when there is winner" do
      it 'returns the winner' do
        allow(user).to receive(:choice) {:paper}
        allow(computer).to receive(:choice) {:rock}
        allow(computer).to receive(:name)
        expect(game.result).to eq "#{computer}, you lucky opposum. Congratulations!"
      end
    end

    context "when it's a tie" do
      it 'returns a message' do
        allow(user).to receive(:choice) {"paper"}
        allow(computer).to receive(:choice) {"paper"}
        expect(game.result).to eq "It's a tie."
      end
    end
  end
end

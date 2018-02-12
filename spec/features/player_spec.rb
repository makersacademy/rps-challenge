describe Player do
  let(:name) { "name of player" }
  let(:image) { "image of player" }
  let(:move) { "move of player" }
  subject(:player) { described_class.new({ name: name, img: image, move: move }) } # hash argument!!!!!!

  context "# initialize" do
    it 'has a name specified by the user' do
      expect(player.name).to eq name
    end

    it 'has an image specified by the user' do
      expect(player.image).to eq image
    end

    it 'has a move that is specified by the user' do
      expect(player.move).to eq move
    end
  end
end

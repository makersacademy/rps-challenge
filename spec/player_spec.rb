describe Player do
  let (:player) { described_class.new("Dave")}

  it 'returns the name that was used to initialize Player instance' do
    expect(player.name).to eq("Dave")
  end

end
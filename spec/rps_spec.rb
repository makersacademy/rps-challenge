describe RPS do

  it "can call the same instance of the class" do
    expect(RPS.create('Chris')).to eq RPS.instance
  end

  it "takes the player name when creating new game" do
    RPS.create('Chris')
    expect(RPS.instance.display_name).to eq 'Chris'
  end
end

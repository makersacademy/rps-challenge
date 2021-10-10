require 'player'

describe Player do
  it "should have a name" do
    bernard = described_class.new("Bernard")
    expect(bernard.name).to eq "Bernard"
  end
  let(:bernard) { Player.new("Bernard") }
  it "should be able to choose rock paper or scissors" do
    bernard.choice = 'rock'     
    expect(bernard.choice).to eq 'rock'
  end

  let(:bot) { Player.new("Computer", bot: true) }
  it "should be able to be a bot" do
    
    expect(bot.bot?).to eq true
  end

  it "can assign itself random choice" do
    bot.assign_rand 
    expect(bot.choice).to eq('rock').or eq('paper').or eq('scissors')
    
  end

end
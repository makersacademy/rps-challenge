require 'game'

describe Game do 

  #I'm not 100% what these lines below do - are they necessary? Copied from Ben's file.
  let(:player){double :player}
  let(:playerClass){double :Player, new: player}
 

  subject{Game.new playerClass} #Do I need to add this to create a new instance
  #of the Game for every test? I thought the use of 'subject' would create an instance - 
  #or is it because an instantiation requires an extra argument - so we need to create it this way

  it 'will create a player' do
    expect(subject.player). to equal player
  end

  it { is_expected.to respond_to :comp_choice }

  it 'can make a choice for the computer' do
    expect(subject.comp_choice).not_to eq(nil)
  end

  it 'can recieve a player and computer choice' do
    expect(subject).to respond_to(:play).with(1).argument
  end

  it 'can determine if player has lost' do
    allow(subject).to receive(:comp_choice).and_return('rock')
    player = double("player", :picked => 'scissors')
    expect(subject.play player).to eq 'lose'
  end
  #This test is not passing - need to ask why

  it 'will report the winner' do
    allow(subject).to receive(:comp_choice).and_return('rock')
    player = double("player", :picked => 'scissors')
    subject.play player
    exepct(subject.winner).to eq 'computer'
  end
  #This test is not passing - need to ask why

  it 'stores the computer selection' do
    allow(subject).to receive(:comp_choice).and_return(:paper)
    expect(subject.comp_pick).to eq("paper")
  #why for this test, is the production code giving ""
  end
  

end



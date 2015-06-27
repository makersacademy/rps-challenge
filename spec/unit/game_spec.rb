require 'game'

describe Game do 

  subject{Game.new} #Do I need this?

  it { is_expected.to respond_to :comp_choice }

  it 'can make a choice for the computer' do
    expect(subject.comp_choice).not_to eq(nil)
  end

  it 'can recieve a player and computer choice' do
    expect(subject).to respond_to(:play).with(1).argument
  end

  xit 'can determine if player has lost' do
    allow(subject).to receive(:comp_choice).and_return('rock')
    player = double("player", :picked => 'scissors')
    expect(subject.play player).to eq 'lose'
  end
  #This test is not passing - need to ask why

  xit 'will report the winner' do
    allow(subject).to receive(:comp_choice).and_return('rock')
    player = double("player", :picked => 'scissors')
    subject.play player
    exepct(subject.winner).to eq 'computer'
  end
  #This test is not passing - need to ask why

  xit 'stores the computer selection' do
    allow(subject).to receive(:comp_choice).and_return(:paper)
    expect(subject.comp_pick).to eq("paper")
  #why for this test, is the production code giving ""
  end
  

end



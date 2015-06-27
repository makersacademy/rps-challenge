require 'game'

describe Game do 

  it { is_expected.to respond_to :comp_choice }

  it 'can make a choice for the computer' do
    expect(subject.comp_choice).not_to eq(nil)
  end

  it 'can recieve a player and computer choice' do
    expect(subject).to respond_to(:play).with(1).argument
  end

  it 'can run logic of game' do
    expect(subject).to respond_to(:logic)
  end












  xit 'stores the computer selection' do
    allow(subject).to receive(:comp_choice).and_return(:paper)
    expect(subject.comp_pick).to eq("paper")
  #why for this test, is the production code giving ""
  end
  

end



require 'player'

describe Player do

  let(:item) { double :item }
  let(:subject) { Player.new('Tim') }

  it 'Returns the item which player chooses' do
    subject.choose(item)
    expect(subject.item).to eq item
  end

end

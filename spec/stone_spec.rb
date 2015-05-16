require 'stone'

describe Paper do

  it { is_expected.to respond_to :versus }

  it 'should declare a draw when playing paper against paper' do
    paper1 = Paper.new
    paper2 = Paper.new
    expect(paper1.versus(paper2)).to eq :draw
  end

end
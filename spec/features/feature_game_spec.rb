feature 'Can play Rock Paper Scissors' do
  scenario 'Can play Paper against Paper and draw' do
    paper1 = Paper.new
    paper2 = Paper.new
    expect(paper1.versus paper2).to eq :draw
  end
end
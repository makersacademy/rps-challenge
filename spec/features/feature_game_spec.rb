feature 'Can play Rock Paper Scissors' do
  scenario 'Can play Paper against Paper and draw' do
    paper1 = Paper.new
    paper2 = Paper.new
    expect(paper1.versus paper2).to eq :draw
  end

  scenario 'Can play stone against paper, and paper wins' do
    paper = Paper.new
    stone = Stone.new
    expect(paper.versus stone).to eq :win
  end

end
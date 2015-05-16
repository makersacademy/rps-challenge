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

  scenario 'Can play scissors against paper, and paper loses' do
    paper = Paper.new
    scissors = Scissors.new
    expect(paper.versus scissors).to eq :loss
  end

  scenario 'Can play stone against Stone and draw' do
    stone1 = Stone.new
    stone2 = Stone.new
    expect(stone1.versus stone2).to eq :draw
  end

end
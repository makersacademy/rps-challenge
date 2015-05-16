feature 'Can play Rock Paper Scissors' do

  scenario 'Can play paper against paper and draw' do
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

  scenario 'Can play stone against stone and draw' do
    stone1 = Stone.new
    stone2 = Stone.new
    expect(stone1.versus stone2).to eq :draw
  end

  scenario 'Can play stone against scissors, and stone wins' do
    stone = Stone.new
    scissors = Scissors.new
    expect(stone.versus scissors).to eq :win
  end

  scenario 'Can play stone against paper, and paper wins' do
    stone = Stone.new
    paper = Paper.new
    expect(stone.versus paper).to eq :loss
  end

    scenario 'Can play scissors against scissors and draw' do
    scissors1 = Scissors.new
    scissors2 = Scissors.new
    expect(scissors1.versus scissors2).to eq :draw
  end

    scenario 'Can play scissors against paper and scissors wins' do
    scissors = Scissors.new
    paper = Paper.new
    expect(scissors.versus paper).to eq :win
  end
end
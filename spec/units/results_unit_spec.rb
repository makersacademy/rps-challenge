describe "Result evaluation" do

  it "evaluates (👊,👊) as draw" do
    result = Result.new('👊', '👊')
    expect(result.eval).to eq('Draw')
  end

  it "evaluates (🤚,🤚) as draw" do
    result = Result.new('🤚', '🤚')
    expect(result.eval).to eq('Draw')
  end

  it "evaluates (✌️,✌️) as draw" do
    result = Result.new('✌️', '✌️')
    expect(result.eval).to eq('Draw')
  end

  it "evaluates (👊,✌️) as draw" do
    result = Result.new('👊', '✌️')
    expect(result.eval).to eq('You win')
  end

  it "evaluates (👊,✌️) as draw" do
    result = Result.new('✌️', '👊')
    expect(result.eval).to eq('You lose')
  end

end

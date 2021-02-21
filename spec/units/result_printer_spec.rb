require 'result_printer'

describe ResultPrinter do
  let(:player_1) { double(:player_1, name: "Kevin") }
  let(:player_2) { double(:player_2, name: "computer") }

  let(:result_1) { :player_1_wins }
  let(:result_2) { :player_2_wins }
  let(:result_3) { :draw }

  subject(:p1wins) { described_class.new(player_1, player_2, result_1)}
  subject(:p2wins) { described_class.new(player_1, player_2, result_2)}
  subject(:draw) { described_class.new(player_1, player_2, result_3)}

  it 'prints the result' do
    expect(p1wins.print).to eq("Kevin has won!")
    expect(p2wins.print).to eq("computer has won!")
    expect(draw.print).to eq("It's a draw!")
  end
end

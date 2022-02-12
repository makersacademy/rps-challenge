feature 'computer move stored' do
  scenario 'confirm cpu move stored' do
    result = Results.new("Ben", "Rock", "Rock")
    expect(result.cpu_move).to eq("Rock")
  end
end
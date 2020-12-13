feature 'midway point' do
  scenario 'allows machine to make a move' do
    at_halfway
    expect(page).to have_text("PSYDUCK'S MOVE")
  end
end

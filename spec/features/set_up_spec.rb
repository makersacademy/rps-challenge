feature "#GameSetUp" do
  scenario 'home page has input' do
    visit('/')
    expect(page).to have_text("Player 1", normalize_ws: true)
    expect(page).to have_text("Player 2", normalize_ws: true)
    expect(page).to have_text("Rounds", normalize_ws: true)
  end
end
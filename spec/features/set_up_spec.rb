feature "#GameSetUp" do
  scenario 'home page has input' do
    visit('/')
    expect(page).to have_text("Rock Paper Scissors", normalize_ws: true)
  end
end
feature "#EnterPlayerNames" do
  scenario 'home page has input' do
    visit('/')
    expect(page).to have_text("Player 1", normalize_ws: true)
    expect(page).to have_text("Player 2", normalize_ws: true)
  end

  scenario 'names can be submitted and seen' do
    visit('/')
    sign_in_and_play
    expect(page).to have_text("John", normalize_ws: true)
    expect(page).to have_text("Frank", normalize_ws: true)
  end
end
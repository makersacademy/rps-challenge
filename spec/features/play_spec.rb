feature "#Play" do
  scenario 'names and points are visible' do
    visit('/')
    sign_in_and_play("one")
    expect(page).to have_text("Round 1", normalize_ws: true)
    expect(page).to have_text("John: 0", normalize_ws: true)
    expect(page).to have_text("Frank: 0", normalize_ws: true)
  end

  scenario 'options are visible' do
    visit('/')
    sign_in_and_play("one")
    expect(page).to have_text("rock", normalize_ws: true)
    expect(page).to have_text("paper", normalize_ws: true)
    expect(page).to have_text("scissors", normalize_ws: true)
  end
end
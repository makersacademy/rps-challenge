feature "#Play" do
  
  let(:computer){ double :computer }
  scenario 'names and points are visible' do
    visit('/')
    sign_in_and_play
    expect(page).to have_text("John", normalize_ws: true)
  end

  scenario 'options are visible' do
    visit('/')
    sign_in_and_play
    expect(page).to have_text("rock", normalize_ws: true)
    expect(page).to have_text("paper", normalize_ws: true)
    expect(page).to have_text("scissors", normalize_ws: true)
  end
end
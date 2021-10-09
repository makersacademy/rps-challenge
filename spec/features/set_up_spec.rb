feature "#GameSetUp" do
  scenario 'home page has input' do
    visit('/')
    expect(page).to have_text("User", normalize_ws: true)
  end
end
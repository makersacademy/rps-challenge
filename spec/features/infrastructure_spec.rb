feature "Testing infrastructure" do
  scenario "Can run content on homepage" do
    visit('/')
    expect(page).to have_content 'Enter player names:'
  end
end
feature "Testing Website" do
  scenario "Returns a string" do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature "infrastructure" do
  scenario "visiting the home page" do
    visit '/'
    expect(page).to have_content('Please submit your name')
  end
end

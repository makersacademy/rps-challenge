feature "Check infrastructure", type: :feature do
  scenario "checks the home page" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working.')
  end
end

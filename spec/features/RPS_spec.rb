feature "Rock Paper Sissors feature test" do
  scenario "home page returned" do
    visit('/')
    expect(page).to have_content('Please enter you name')
  end
end

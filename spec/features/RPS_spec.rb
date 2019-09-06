feature "Rock Paper Sissors feature test" do
  scenario "home page returned" do
    visit('/')
    expect(page).to have_content('Welcome to RPS')
  end
end

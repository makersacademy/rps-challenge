feature 'Welcome Page' do
  scenario "Player is welcomed when on homepage" do
    visit('/')
    expect(page).to have_content("Welcome to Rock Paper Scissors")
  end
end

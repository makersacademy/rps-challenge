

feature "test app structure" do
  scenario "the app is runnig as a whole" do 
    visit('/')
    expect(page).to have_content('Welcome to Rock - Paper - Scissors')
  end

end

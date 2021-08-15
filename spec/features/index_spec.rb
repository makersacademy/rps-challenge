feature "the game page is loaded on login" do

  scenario "testing page navigates to the game after login" do 
    visit("/")
    login_and_play
    expect(page).to have_content("Choose your weapon!")
  end
  
end

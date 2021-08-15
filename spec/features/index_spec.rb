
feature "the game page is loaded on login" do

  scenario "testing page navigates to the game after login" do 
    visit("/")
    login_and_play("Mike")
    expect(page).to have_content("What is your weapon of choice?")
  end
  
  scenario "testing page has the user name after login" do 
    visit("/")
    login_and_play("Mike")
    expect(page).to have_content("..choose wisely Mike")
  end

end

feature "User options page" do 
  scenario "User fill in their name -> page shows custom name " do 
    visit('/')
    click_button "Go"
    expect(page).to have content "Welcome warrior Gosho"
  end
end
feature "User options page" do 
  scenario "User fill in their name -> page shows custom name " do 
    visit('/')
    fill_in('Player', with: "Gosho")
    click_button "GO"
    expect(page).to have_content "Welcome warrior Gosho"
  end
end
feature "get username" do 
  scenario "when player submits their name" do 
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content "Hello, Aisha :)"
  end 
end 

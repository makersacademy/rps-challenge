feature "User options page" do 
  scenario "User fill in their name -> page shows custom name " do 
    sing_n_play
    expect(page).to have_content "Welcome warrior Gosho"
  end

  scenario "User choos an option and proceed to play" do 
    sing_n_play
    click_button "Rock"
    expect(page).to have_content "You choose Rock"
  end

end

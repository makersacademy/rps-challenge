feature "register the correct choice a player makes" do
  scenario "shows the choice 'Rock' the player made on the play screen" do
    get_to_play_screen
    choose "Rock"
    click_button "Submit"
    expect(page).to have_content "Maximus, you played rock."
  end
  
  scenario "shows the choice 'Paper' the player made on the play screen" do
    get_to_play_screen
    choose "Paper"
    click_button "Submit"
    expect(page).to have_content "Maximus, you played paper."
  end
  
  scenario "shows the choice 'Scissors' the player made on the play screen" do
    get_to_play_screen
    choose "Scissors"
    click_button "Submit"
    expect(page).to have_content "Maximus, you played scissors."
  end
end
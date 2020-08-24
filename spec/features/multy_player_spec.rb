feature "Game can be played with thwo people" do 
  scenario "Player can choose to play multiplayer" do 
    multy_sign_n_play
    expect(page).to have_content "Welcome warrior Player_1"
  end

  scenario "Give the turn to the second player" do 
    multy_sign_n_play
    click_link "Confirm Choice"
    expect(page).to have_content "Player_2 turn"
  end

  scenario "Second player turn to choose" do 
    multy_sign_n_play
    click_link "Confirm Choice"
    click_button "Ok"
    expect(page).to have_content "Welcome warrior Player_2"
  end
 
  scenario "The first player choose and option" do 
    multy_sign_n_play
    click_button "Paper"
    expect(page).to have_content "You choose: Paper"
  end

  scenario "The second player choose and option" do 
    multy_sign_n_play
    click_button "Paper"
    click_link "Confirm Choice"
    click_button "Ok"
    click_button "Rock"
    expect(page).to have_content "You choose: Rock"
  end

  scenario "Play another round" do 
    multy_sign_n_play
    choose_n_confirm
    click_button "Ok"
    choose_n_confirm
    click_link "Play again"
    click_button "Ok"
    expect(page).to have_content "Welcome warrior Player_1"
  end
  

end

feature "Game can be played with thwo people" do 
  scenario "Player can choose to play multiplayer" do 
    visit(/)
    click_link "Multiplayer"
    fill_in ('Player', with: "Player_1")
    fill_in ('Player', with: "Player_2")
    click_link "Play"
    expect(page).to have_content "Warrior Player_1 choosing now"
  end
end
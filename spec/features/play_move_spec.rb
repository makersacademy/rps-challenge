feature "play_move" do
  scenario "player can enter a move  " do
    sign_in_and_play
    click_link "Enter Move"
    fill_in :move, with: "Rock"
    save_and_open_page
    expect(page).to have_content "Rock"
  end
end

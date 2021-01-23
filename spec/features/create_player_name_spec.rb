feature "registering for a game" do 

  scenario "displays entered name" do
    enter_name_and_start_game
    expect(page).to have_text "Charlotte vs opponentbot!"
  end

end

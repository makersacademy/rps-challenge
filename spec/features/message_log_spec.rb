feature "FEATURE: Message log" do

  scenario "Enter game message" do
    play_two_player
    expect(page).to have_content("Beast and Magneto entered the game!")
  end

end

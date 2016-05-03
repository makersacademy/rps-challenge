
feature "Enter name" do

  scenario "Entering a player name" do
    sign_in_and_play_computer
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Entering a player name" do
    sign_in_and_play_human
    message = "Wayne Vs. Jimmy"
    expect(page).to have_content message
  end

end

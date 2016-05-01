
feature "Enter name" do

  scenario "Entering a player name" do
    sign_in_and_play
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

end

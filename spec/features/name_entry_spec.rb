
feature "Welcome page" do

  scenario "Lets players fill in their names and start the game" do
    sign_in_and_play
    expect(page).to have_content('Dave vs. Mittens')
  end

end

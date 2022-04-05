feature "Select whether to play vs computer or pass and play" do

  scenario "Expect solo-game page to have a form to enter name and submit" do
    solo_game

    expect(page).to have_content "Enter Name"
    expect(page).to have_button "Submit"
  end

  scenario "Names page displays the users name" do
    solo_submit_name('Chris')

    expect(page).to have_content "Chris vs Computer"
  end

end

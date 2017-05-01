feature "Name Entry" do

  scenario "Marketeer can register their name" do
    dwayne_signs_in
    expect(page).to have_content "Dwayne 'The Marketeer' Johnson"
  end

  scenario "Two Marketeers can register their name" do
    dwayne_signs_in
    choose "Rock"
    click_button "Add player"
    fill_in :name, with: "Edward Marketeerhands"
    choose "Scissors"
    click_button "Play"
    expect(page).to have_content "Edward Marketeerhands"
  end

end

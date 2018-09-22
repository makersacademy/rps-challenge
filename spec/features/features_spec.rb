feature Challenge do
  scenario "asks for players name" do
    name_and_submit
    expect(page).to have_content "Welcome Ayodele Alakija!"
  end
end

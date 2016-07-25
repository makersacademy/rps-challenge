feature "Name Input Form" do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_content("Hey, Sarah!")
  end
end

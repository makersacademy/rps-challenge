feature "name function" do
  scenario "When a name is entered a name is displayed" do
    sign_in_and_play
    expect(page).to have_content('Chris')
  end
end
  
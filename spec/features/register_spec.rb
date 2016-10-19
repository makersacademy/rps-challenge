feature "enter name" do
  scenario "can submit a name" do
    sign_in_and_play
    expect(page).to have_content "jini, make your choice"
  end
end

feature "Enter names" do
  scenario "can submit a name" do
    sign_in_and_play
    expect(page).to have_content "Sarah vs PC"
  end
end

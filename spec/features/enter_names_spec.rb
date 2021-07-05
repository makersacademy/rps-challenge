feature "Enter Name" do
  scenario "Player submits name" do
    sign_in_and_play

    expect(page).to have_content "Rachel vs. Computer"
  end
end

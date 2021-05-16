feature "entering name" do
  scenario "submit name" do
    sign_in
    expect(page).to have_content "John: Rock, Paper, or Scissors?"
  end
end
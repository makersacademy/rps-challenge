feature "Name Entry" do
  scenario "Marketeer can register their name" do
    dwayne_signs_in
    expect(page).to have_content "Dwayne 'The Marketeer' Johnson"
  end
end

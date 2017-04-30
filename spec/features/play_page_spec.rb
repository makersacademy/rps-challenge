feature "Play page:" do

  scenario "user sees name" do
    submit_names("Ant")
    expect(page).to have_content "Player One: Ant"
  end

end

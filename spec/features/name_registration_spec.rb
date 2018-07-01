feature "Name registration" do
  scenario "The player can register their name" do
    register_name
    expect(page).to have_content"Welcome Yvonne, please select an option"
  end
end

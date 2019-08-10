feature "home_page" do
  scenario "user can enter his name" do
    visit "/"
    expect(page).to have_field "name"
    expect(page).to have_button "Start the game!"
  end

  scenario "redirects to page /game" do
    sign_in
    expect(page.current_path).to eq "/game"
  end
end
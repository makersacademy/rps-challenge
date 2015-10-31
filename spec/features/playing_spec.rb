require "web_helpers"

feature "plays the game" do
  scenario "can choose one image" do
    sign_in
    expect(page).to have_content('CHOOSE NOW')
    find("img[alt='paper']").click
  end
end

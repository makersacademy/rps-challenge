require "web_helpers"

feature "entering names" do
  scenario "shows the name on the next screen" do
    sign_in
    expect(page).to have_content('YAAARRRGH')
  end
end

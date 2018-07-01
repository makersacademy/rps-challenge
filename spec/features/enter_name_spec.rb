require "./rps_web.rb"

feature "Enter player_name" do
  scenario "can submit name by a form" do
    sign_in_and_play
    expect(page).to have_content("Jay vs. Computer")
  end
end

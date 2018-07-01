require "./rps_web.rb"

feature "select weapon" do
  scenario "select one weapon" do
    sign_in_and_play
    fill_in :weapons, with: "rock"
    click_button("Play")
    expect(page).to have_content("You win")
  end
end

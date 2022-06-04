feature "Enter player name" do
  scenario "submitting a name" do
    sign_in_and_play
    #save_and_open_page
    expect(page).to have_content "Joe vs. Dan"
  end
end
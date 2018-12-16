feature "Name on page" do
  scenario "Check that name is on page" do
    sign_in_and_play
    expect(page).to have_content "Jacques"
  end
end

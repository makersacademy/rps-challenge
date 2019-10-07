feature "Name on page" do
  scenario "Check that name is on page" do
    sign_in
    expect(page).to have_content "Jacques"
  end
end

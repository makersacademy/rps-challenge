feature "play game" do
  background do
    sign_in
  end

  scenario "view players' names" do
    click_button("Ready to play!")
    expect(page).to have_content ("Xin vs. Computer")
  end


end

feature "display players information" do

  scenario "vist homepage" do
    sign_in_page
    expect(page).to have_content "Rock Star Marketeer VS Game"
    expect(page).to have_content "Select from options below:"
  end

end

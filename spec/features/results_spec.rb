feature "The result page", :type => :feature do

  scenario "displays choices for both user and computer" do
    sign_in
    click_button"Rock"
    expect(page).to have_text("Your choice: Rock")
    expect(page).to have_text("Computer's choice:")
  end

  scenario "displays the winner" do
    sign_in
    click_button"Rock"
    expect(page).to have_text("Nick is the winner. Congratulations")
  end
end

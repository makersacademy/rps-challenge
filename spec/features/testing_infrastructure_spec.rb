feature "Testing user enter names" do
  scenario "Allows users to submit name and see them in lights" do
    sign_in_and_play
    expect(page).to have_content "Owliver"
  end
end

feature "Pick a weapon" do
  scenario "Allows users to select a name" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "You have selected"
  end
end

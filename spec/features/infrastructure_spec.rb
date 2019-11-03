feature "local output tests" do


  scenario "player can input name into form and it is displayed" do
    visit '/'
    fill_in :player_name,with: "Bea"
    click_on "Submit"
    expect(page).to have_text "Lets play Bea!"
  end
end

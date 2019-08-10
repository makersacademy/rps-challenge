feature "user chooses their weapon" do
  scenario "choose from RPS" do
    user_inputs_name
    user_chooses_weapon
    expect(page).to have_content "You chose rock"
  end
end

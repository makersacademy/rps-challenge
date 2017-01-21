feature "Logging in" do
  let(:player_one_name){double :player_one_name}
  scenario "User adds name on first page" do
    visit "/"
    fill_in('player_one_name', with: player_one_name)
    click_button("Go!")
    expect(page).to have_content player_one_name
  end
end

feature 'User selects from three options' do
  before do
    sign_in_and_play
    choose "Rock"
    click_button "ok"
  end
  scenario "User's selected option is displayed" do
    expect(page).to have_content("You: Rock!")
  end
  scenario "The machine option is displayed" do
    expect(page).to let_machine_has_rps
  end
  scenario "Either will win or both draw" do
    expect(page).to has_a_winner
  end

end

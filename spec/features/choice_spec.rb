feature 'Weapon Choice' do
  scenario "choose rock, paper, or scissors" do
    sign_in_and_play
    fill_in :choice, with: "Rock"
    click_button "Submit Choice"
    expect(page).to have_content "BMO chose"
  end
end

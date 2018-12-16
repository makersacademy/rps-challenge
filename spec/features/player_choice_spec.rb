feature "Choosing" do
  scenario 'Player can choose Rock, paper of scissors' do
    visit('/')
    fill_in :player, with: "Fulgrim"
    click_button "Submit"
    fill_in :player_choice, with: "scissors"
    click_button "Submit"
    expect(page).to have_content("Fulgrim has chosen to fight with scissors")
  end
end

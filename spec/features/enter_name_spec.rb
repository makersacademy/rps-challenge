feature 'Enter player' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player, with: "Aga"
    click_button "Play"
    expect(page).to have_content "Rock Paper Scissors"
  end
end

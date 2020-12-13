feature 'machine moves' do
  scenario 'game draws a roll for machine' do
    machine_moves
    expect(page).to have_text("PSYDUCK HAS SELECTED...")
  end
end

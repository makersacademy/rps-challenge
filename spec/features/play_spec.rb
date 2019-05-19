feature "Choose R-P-S" do
  scenario 'can choose a play option' do
    visit('/')
    fill_in :player_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end

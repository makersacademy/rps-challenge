feature 'Selecting move' do
  scenario 'give player move options' do
    visit('/')
    fill_in :name, with: "Charlotte"
    click_button("Let's play!")
    expect(page).to have_content "Pick a move:"
  end
end
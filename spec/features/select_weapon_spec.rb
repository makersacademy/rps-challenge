feature 'select weapon' do
  scenario 'player has three options for weapon' do
    enter_name_and_submit
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end

feature 'select weapon' do
  scenario 'player has three options for weapon' do
    enter_name_and_submit
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
end

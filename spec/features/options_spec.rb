feature 'Options' do
  scenario "option 1 : 'Rock'" do
    sign_in
    expect(page).to have_button("Rock")
  end

  scenario "option 2 : 'Paper'" do
    sign_in
    expect(page).to have_button("Paper")
  end

  scenario "option 3 : 'Scissors'" do
    sign_in
    expect(page).to have_button("Scissors")
  end
end

feature 'select shape' do
  scenario 'it displays and allows you to select the available shapes' do
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end


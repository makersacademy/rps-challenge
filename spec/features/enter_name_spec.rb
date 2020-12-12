feature 'enter name' do
  scenario 'can fill out form with name and see result' do
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    expect(page).to have_content("Welcome, Ollie")
  end
end
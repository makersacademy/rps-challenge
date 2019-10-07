feature 'adding new player' do
  scenario 'can add a new player' do
    visit '/enter_name'
    fill_in :player_name, with: 'Manisha'
    click_button "Sign in"
    expect(page).to have_content('Manisha')
  end
end
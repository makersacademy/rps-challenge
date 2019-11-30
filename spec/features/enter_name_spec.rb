feature 'Enter name' do
  scenario 'Player should enter name and it show on next screen' do
    visit('/')
    fill_in 'player_name', with: 'Ellie'
    click_on 'Submit'
    expect(page).to have_content 'Welcome Ellie'
  end
end

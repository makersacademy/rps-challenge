feature 'Player registration' do
  scenario 'player can enter name to register' do
    visit '/'
    fill_in 'name', with: 'Tomas'
    click_on 'Register'
    expect(page).to have_content "Welcome, Tomas"
  end
end

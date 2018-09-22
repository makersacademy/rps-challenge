feature 'checks that name appears on play page' do
  scenario do
    visit('/')
    fill_in 'name', with: 'John'
    click_on('Go')
    expect(page).to have_content('Hello John')
  end
end

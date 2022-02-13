feature 'player enters their name' do
  scenario 'player registers their name and can see it on the page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Play'

    expect(page).to have_content 'Pingu'
  end
end
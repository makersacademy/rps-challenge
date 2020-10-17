feature 'entering name' do
  scenario 'first user enters name' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button("Begin")
    expect(page).to have_content('Harry')
  end
end

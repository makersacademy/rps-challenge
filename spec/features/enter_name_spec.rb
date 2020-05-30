feature 'enter name' do

  scenario 'player enters name' do
    visit('/')
    fill_in('Name', with: 'Al')
    expect(page).to have_content 'Al'
  end

end
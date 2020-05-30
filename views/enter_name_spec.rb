feature 'enter name' do

  scenario 'player enters name which is then shown on screen' do
    visit('/')
    fill_in('Name', with: 'Al')
    expect(page).to have_content 'Al'
  end

end
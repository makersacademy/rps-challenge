feature '/' do 
  scenario 'User can access index' do
    visit('/')
    expect(page.status_code).to be(200)
  end

  scenario 'Form added that accepts user name' do
    visit('/')
    fill_in('name', with: 'Mikey')
    click_button('Submit')
    expect(page).to have_content 'Mikey vs. Computer'
  end
end
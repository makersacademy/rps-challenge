feature '@index' do
  scenario 'should display greeting' do
    visit('/')
    expect(page).to have_content 'Welcome To The Game'
  end

end 
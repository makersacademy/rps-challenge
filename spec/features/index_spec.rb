feature '@index' do
  scenario 'should display greeting' do
    visit('/')
    expect(page).to have_content 'Welcome To The Game'
  end

  scenario 'should able to enter name' do
    visit('/')
    fill_in :name, with: "Dave"
    click_button 'Submit'
  end

end 
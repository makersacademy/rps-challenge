feature '@index' do
  scenario 'should display greeting' do
    visit('/')
    expect(page).to have_content 'Welcome To The Game'
  end

  scenario 'should able to enter name' do
    sign_in_and_play
  end

  scenario 'should able to see name' do
    sign_in_and_play
    expect(page).to have_content "Dave"
  end

end 

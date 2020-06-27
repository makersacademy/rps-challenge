

feature 'Welcome Screen' do
  scenario 'User will be welcomed and asked to enter name' do
    visit '/' 
    expect(page).to have_content("Enter Your Name:")
  end 
end 
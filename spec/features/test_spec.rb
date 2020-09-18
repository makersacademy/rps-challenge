feature 'test set_up' do 
  scenario 'displays message' do 
    visit '/'
    expect(page).to have_content('Let\'s play RPS!')
  end 
end 
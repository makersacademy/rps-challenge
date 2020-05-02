feature 'Enter name' do
  scenario 'User can enter name and see it' do
    visit('/')
    expect(page).to have_content 'Welcome to RPS!'
  end
end

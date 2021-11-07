feature 'Getting players names' do
  scenario 'can submit names' do
    visit('/')
    expect(page).to have_content 'Please enter your name below'
  end
end

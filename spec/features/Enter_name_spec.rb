feature 'Enter Name' do
  scenario 'register' do
    register
    expect(page).to have_content 'Pikachu'
  end
end

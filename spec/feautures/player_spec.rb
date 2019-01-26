feature 'Enter name' do
  scenario 'there is a form on the homepage' do
    visit('/')
    expect(page).to have_field(type: 'text')
  end
end

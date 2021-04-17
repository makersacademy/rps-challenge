require './app'
feature 'Testing Infrastructure' do
  scenario 'there is an empty field' do
    visit('/')
    expect(page).to have_field
  end
end
feature 'First spec' do
  scenario 'Can run app and see page' do
    visit('/')
    expect(page).to have_content 'Hello'
  end
end

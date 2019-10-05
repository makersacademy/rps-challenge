feature 'hello' do
  scenario 'homepage has hello' do
    visit('/')
    expect(page).to have_content 'Hello'
  end
end

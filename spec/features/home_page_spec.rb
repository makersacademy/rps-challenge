feature 'home page' do
  scenario 'it says hi' do
    visit('/')
    expect(page).to have_content 'Hi!'
  end
end

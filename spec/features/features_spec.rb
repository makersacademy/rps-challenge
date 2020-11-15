# Will break this down to separate when I have more features.

feature 'home page' do
  scenario 'it says hi' do
    visit('/')
    expect(page).to have_content 'Hi!'
  end
end

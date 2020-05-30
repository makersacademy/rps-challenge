feature 'Infrastructure test' do
  scenario 'Loads page with Hello!' do
    visit('/')
    expect(page).to have_content('Hello!')
  end
end
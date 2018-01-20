feature 'Index' do
  scenario 'prints hello' do
    visit('/')
    expect(page).to have_content('Welcome To A Rock - Paper - Scissors Game!')
  end
end

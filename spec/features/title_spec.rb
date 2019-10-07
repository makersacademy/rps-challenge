feature 'Displays Name on screen' do
  scenario 'user visits page' do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors!"
  end
end

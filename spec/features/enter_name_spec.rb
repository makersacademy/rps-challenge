feature 'Entering player name' do
  scenario 'Can enter name and name is then displayed on page' do
    sign_in_single
    expect(page).to have_content('Hi Skaiste!')
  end
  scenario 'Can enter second player name' do
    sign_in_multi
    expect(page).to have_content('Hi Skaiste and Seb!')
  end
end

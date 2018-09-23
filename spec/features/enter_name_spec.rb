feature 'Entering player name' do
  scenario 'Can enter name and name is then displayed on page' do
    sign_up_single
    expect(page).to have_content('Hi Skaiste!')
  end
  scenario 'Can enter second player name' do
    sign_up_multi
    click_button('rock')
    expect(page).to have_content('Hi Seb!')
  end
end

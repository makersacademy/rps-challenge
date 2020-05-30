feature 'RPS Game' do
  scenario 'player enters their name and sees their name after submitting' do
    visit '/'
    fill_in('name', with: 'Nikita')
    click_button("Let's play!")
    expect(page).to have_content('Make your choice, Nikita.')
  end
end

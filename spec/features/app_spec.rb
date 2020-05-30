feature 'RPS Game' do
  scenario 'player enters their name and sees their name after submitting' do
    # visit '/'
    # fill_in('name', with: 'Nikita')
    # click_button("Let's play!")
    enter_name_and_play
    expect(page).to have_content('Make your choice, Nikita.')
  end

  scenario 'player chooses an option from dropdown' do
    enter_name_and_play
    select('Rock', from: 'choice')
    click_button('Play!')
    expect(page).to have_content('You won with Rock!')
  end
end

feature 'Result page' do

  scenario 'Displays player\'s choise' do
    sign_in_and_play
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Misa has chosen ROCK!')
  end
end

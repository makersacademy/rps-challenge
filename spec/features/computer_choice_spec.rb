feature 'computer chooses RPS' do

  scenario 'The computer makes a random choice' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('The computer has chosen rock!')
  end
end

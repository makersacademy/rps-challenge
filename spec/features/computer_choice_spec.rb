feature 'computer chooses a play' do
  scenario 'computer selects at random' do
    srand(4)
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Computer chose Scissors')
  end
end
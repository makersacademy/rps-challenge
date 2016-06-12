
feature 'user can choose rock, paper or scissors' do
  scenario 'user select rock option' do
    sign_in_and_play
    choose('Rock')
    click_button('Choose!')
    expect(page).to have_content('Your choice is Rock')
  end
end

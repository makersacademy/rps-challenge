feature 'Player selects Rock | Paper | Scissors' do
  scenario 'user selects an option' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You chose Rock'
  end
end




  
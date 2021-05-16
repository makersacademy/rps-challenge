feature 'displaying result' do
  scenario 'both players chose the same option' do
    sign_in_and_play
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content("It's a draw!")
  end
end
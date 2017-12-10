feature 'Testing result screen' do
  scenario 'clicking one of the three buttons brings you to reuslt page' do
    sign_in
    click_button('Rock')
    visit('/result')
    expect(page).to have_content('Alan selected Rock')
  end

  scenario 'also displays the computers selection' do
    sign_in
    click_button('Rock')
    visit ('/result')
    expect(page).to have_content('The computer selected')
  end

  scenario 'the results page has a play again button' do
    sign_in
    click_button('Rock')
    visit('/result')
    find_button("Play Again").visible?
  end

  # scenario 'if it is a draw, page displys draw' do
  #   sign_in
  #   click_button('Rock')
  #   computer_result = double('computer_result', computer_result: 'Rock')
  #   visit('/result')
  #   expect(page).to have_content("Draw")
  # end

end

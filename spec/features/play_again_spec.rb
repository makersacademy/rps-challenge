feature 'Play again or exit' do
  scenario 'play again' do
    sign_in
    click_button('Rock')
    click_button('Yes')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'exit' do
    sign_in
    click_button('Rock')
    click_button('No')
    expect(page).to have_content 'Thank you for palying. Bye!'
  end

end

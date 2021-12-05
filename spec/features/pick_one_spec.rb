feature 'Pick one option' do
  scenario 'click on rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("Pikachu's choice:\nrock")
  end

  scenario 'click on paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("Pikachu's choice:\npaper")
  end

  scenario 'click on scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content("Pikachu's choice:\nscissors")
  end
end

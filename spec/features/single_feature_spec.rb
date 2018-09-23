feature 'Single player game' do

  scenario 'I can choose rock, paper or scissors' do
    sign_in_single
    click_button('rock')
    expect(page).to have_content('Skaiste chose rock')
  end
  scenario 'The computer also choses a move' do
    sign_in_single
    click_button('rock')
    expect(page).to have_content('Computer chose ')
  end
  scenario 'Shows result' do
    sign_in_single
    click_button('rock')
    expect(page).to have_content("Result: ")
  end
end

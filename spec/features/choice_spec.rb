feature 'Game buttons' do
  scenario 'rock button pressed' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Pavi selected Rock!"
  end

  scenario 'paper button pressed' do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content "Pavi selected Paper!"
  end

  scenario 'scissors button pressed' do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content "Pavi selected Scissors!"
  end
end

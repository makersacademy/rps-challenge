feature '/play should have rock paper and scissors buttons' do

  scenario 'should have a rock button' do
    sign_in_and_play
    expect(page).to have_button("Rock")
  end

  scenario 'should have a paper button' do
    sign_in_and_play
    expect(page).to have_button("Paper")
  end

  scenario 'should have a scissors button' do
    sign_in_and_play
    expect(page).to have_button("Scissors")
  end

end

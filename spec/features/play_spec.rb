feature 'Play options' do
  scenario 'has rock option' do
    sign_in_to_play
    expect(page).to have_button("Rock")
  end

  scenario 'has paper option' do
    sign_in_to_play
    expect(page).to have_button("Paper")
  end

  scenario 'has scissors option' do
    sign_in_to_play
    expect(page).to have_button("Scissors")
  end

end

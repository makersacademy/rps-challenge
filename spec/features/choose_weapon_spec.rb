feature 'Offer choice of weapon' do
  scenario 'should display the names of both players' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs. RNG God'
  end
  scenario 'should invite player to choose weapon' do
    sign_in_and_play
    expect(page).to have_content 'Bob, choose your weapon'
  end
end

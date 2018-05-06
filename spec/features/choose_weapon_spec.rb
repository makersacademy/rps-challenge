feature 'Offer choice of weapon' do
  scenario 'should invite player to choose weapon' do
    sign_in_and_play
    expect(page).to have_content 'Bob, choose your weapon'
  end
end
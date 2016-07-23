feature 'Play displays whether you win or lose' do
  scenario 'Tommy plays a rock and wins' do
    allow(Bot).to receive(:gesture).and_return('scissors')
    sign_in
    @game.play(:rock)
    expect(page).to have_content('won with the')
  end
end

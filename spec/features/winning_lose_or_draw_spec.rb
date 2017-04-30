feature 'win, lose or draw' do
  scenario 'when player wins, shows message' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 3 }
    click_button 'rock'
    expect(page).to have_content 'Sulaiman wins'
  end

  scenario 'when both choose same options, shows message: Draw' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 3 }
    click_button 'scissors'
    expect(page).to have_content 'Draw!'
  end
end

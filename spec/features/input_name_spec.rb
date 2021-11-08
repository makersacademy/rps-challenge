feature 'Input player names' do
  scenario 'submitting names' do
    input_and_play
    expect(page).to have_content 'Player 1 choose one of the three options'
  end
end

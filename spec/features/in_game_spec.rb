
feature 'in game' do

  scenario 'user is presented with weapon choices' do
    log_in
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end
end

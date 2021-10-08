feature 'play game' do
  scenario 'see move choices' do
    add_name_start
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end
end
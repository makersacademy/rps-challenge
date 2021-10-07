feature 'play game' do
  scenario 'see move choices' do
    add_name_start
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end
end
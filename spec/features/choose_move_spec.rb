feature 'Entering move' do
  scenario 'Can submit a move' do
    sign_in
    click_button 'ROCK'
    expect(page).to have_content 'Jimmy selected ROCK'
  end
end

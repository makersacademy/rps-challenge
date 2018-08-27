feature 'Entering move' do
  scenario 'Can submit a move' do
    sign_in
    click_button 'rock'
    expect(page).to have_content 'Jimmy selected rock'
  end
end

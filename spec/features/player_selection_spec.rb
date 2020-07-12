feature 'Selection' do
  scenario 'User can see their choices' do
    sign_in
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'User can make their choice' do
    sign_in
    click_button 'rock'
    expect(page).to have_content 'Catriona chose rock'
    expect(page).to have_content 'Computer chose '
  end
end

feature 'Select attack method' do

  scenario 'choose Rock' do
    single_player_sign_in
    click_button('Rock')
    expect(page).to have_content "Pedro used Rock"
  end

  scenario 'choose Paper' do
    single_player_sign_in
    click_button('Paper')
    expect(page).to have_content "Pedro used Paper"
  end

  scenario 'choose Scissors' do
    single_player_sign_in
    click_button('Scissors')
    expect(page).to have_content "Pedro used Scissors"
  end
end

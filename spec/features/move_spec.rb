feature 'moves' do
  scenario 'user can choose rock/paper/scissors' do
    sign_in_and_play
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end

  scenario 'page displays result' do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content('CPU chose')
  end
end

feature 'Testing select tag options' do
  scenario 'page shows rock has been selected' do
    sign_in_and_play
    select 'Rock', from: 'move'
    expect(page).to have_content("Rock")
  end
  scenario 'page shows rock has been selected' do
    sign_in_and_play
    select 'Paper', from: 'move'
    expect(page).to have_content("Paper")
  end
  scenario 'page shows rock has been selected' do
    sign_in_and_play
    select 'Scissors', from: 'move'
    expect(page).to have_content("Scissors")
  end
end

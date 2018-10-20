feature 'player signs in and selects custom options' do

  scenario 'taken to custom option screen' do
    sign_in_and_play_custom
    fill_in('weapon_1', :with => 'Fire')
    fill_in('weapon_2', :with => 'Ice')
    click_button('Add')
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
    expect(page).to have_content "Lizard"
    expect(page).to have_content "Spock"
    expect(page).to have_content "Fire"
    expect(page).to have_content "Ice"
  end

end

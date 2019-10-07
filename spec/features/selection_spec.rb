feature 'Selecting rock' do
  scenario 'choosing rock displays the choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Nabille played rock"
  end
end

feature 'Selecting paper' do
  scenario 'choosing paper displays the choice' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Nabille played paper"
    end
end

feature 'Selecting scissors' do
  scenario 'choosing scissors displays the choice' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Nabille played scissors"
  end
end

feature 'on play page' do
  scenario 'play page should have player name' do
    sign_up
    visit '/play'
    expect(page).to have_content 'AAA'
  end

  scenario 'should have button "Rock" ' do
    sign_up
    visit '/play'
    expect(page).to have_button "Rock"
  end

  scenario 'should have button "Scissors" ' do
    sign_up
    visit '/play'
    expect(page).to have_button "Scissors"
  end

  scenario 'should ahve button "Paper" ' do
    sign_up
    visit '/play'
    expect(page).to have_button "Paper"
  end
end
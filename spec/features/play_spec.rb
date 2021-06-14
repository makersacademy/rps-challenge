feature 'Clicking RPS links' do
  scenario 'clicks rock and wins' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content "You won!"
  end

  feature 'Clicking Paper' do
    scenario 'clicks paper and wins' do
      sign_in_and_play
      click_link 'Paper'
      expect(page).to have_content "You won!"
    end
  end

  feature 'Clicking Scissors' do
    scenario 'clicks scissors and loses' do
      sign_in_and_play
      click_link 'Scissors'
      expect(page).to have_content "You lost!"
    end
  end
end

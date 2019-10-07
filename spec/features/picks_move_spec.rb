feature 'Picks move' do
  scenario 'picking plyr1 move - Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Adam's move: Rock"
  end
end

feature 'Picks move' do
  scenario 'picking plyr1 move - Paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Adam's move: Paper"
  end
end

feature 'Picks move' do
  scenario 'picking plyr1 move - Scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Adam's move: Scissors"
  end
end

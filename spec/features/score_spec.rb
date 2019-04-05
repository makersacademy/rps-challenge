feature 'can keep score' do
  scenario 'score 1-0 when player 1 wins' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Josh 1 - 0 Sam"
  end
end

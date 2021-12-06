feature 'choice' do
  scenario 'player choses paper' do
    sign_in_and_play
    select_paper_and_submit
    expect(page).to have_content("kenny you have chosen paper")
  end

  scenario 'player choses rock' do
    sign_in_and_play
    select_rock_and_submit
    expect(page).to have_content("kenny you have chosen rock")
  end

  scenario 'player choses scissors' do
    sign_in_and_play
    select_scissors_and_submit
    expect(page).to have_content("kenny you have chosen scissors")
  end
end

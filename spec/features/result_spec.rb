feature 'confirms the choice made and return the choice made by machine' do
  scenario 'confirms the choice made by player' do
    sign_in_and_play
    click_on(class: 'button_paper')
    expect(page).to have_content "Bob, you chose paper"
  end

  scenario 'confirms the choice made by AI' do
    sign_in_and_play
    click_on(class: 'button_paper')
    expect(page).to have_content "RNG God chose"
  end

end
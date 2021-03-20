feature 'second_round' do
  scenario 'after first round players can select to start a new round' do
    win_scenario
    click_on 'Play again!'
    expect(page).to have_content 'Round 2'
  end

  scenario 'after first round you can select new players' do
    win_scenario
    click_on 'New Players'
    expect(page).to have_content 'Welcome to the THUNDERDOME'
  end
end

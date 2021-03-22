feature 'victory' do
  scenario 'when selecting new players a victory screen is shown showing who won overall' do
    win_scenario
    click_on 'New Players'
    expect(page).to have_content 'Jack defeated K-2SO'
  end
end

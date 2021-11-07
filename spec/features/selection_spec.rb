feature 'RPS selection page' do
  scenario 'contains form that on completion, takes the users selection' do
    sign_in_and_play
    click_on('Rock')
    expect(page).to have_content('John picks: Rock')
  end
end
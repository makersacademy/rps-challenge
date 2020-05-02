feature 'ai player makes a choice' do
  scenario 'they choose rock, paper or scissors' do
    sign_in
    click_button('rock')
    expect(page).to have_content(/愛 picked [rps][a-z]{3,7}./)
  end
end

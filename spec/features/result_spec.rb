feature 'results page test' do
  scenario 'shows play again button' do
    enter_name_and_go
    click_button('rock')
    expect(page).to have_content('Play again')
  end
end

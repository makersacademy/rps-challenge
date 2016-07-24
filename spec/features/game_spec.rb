feature 'Winner' do
  scenario 'returns the winner' do
    sign_in
    click_button('Rock')
    expect(page).to have_content '#{@winner.name} win !!!'
  end
end

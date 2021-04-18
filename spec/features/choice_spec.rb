feature 'choices' do
  scenario 'shows the choice selected' do
    fillin_and_submit
    click_button('Rock')
    expect(page).to have_content('you chose Rock')
  end
  scenario 'shows the choice of coputer' do
    fillin_and_submit
    click_button('Rock')
    expect(page).to have_content('Computer chose Scissors')
  end
end
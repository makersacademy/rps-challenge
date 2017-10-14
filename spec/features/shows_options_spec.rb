feature 'Shows move options' do
  scenario 'Displayes Paper option' do
    sign_in
    expect(page).to have_selector(:button, 'Paper')
  end

  scenario 'Displayes Scissors option' do
    sign_in
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'Displayes Rock option' do
    sign_in
    expect(page).to have_selector(:button, 'Rock')
  end
end

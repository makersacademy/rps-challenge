
feature 'Making a Choice' do
  scenario 'Picking Rock' do
    get_started
    expect(page).to have_button('Rock')
  end

  scenario 'Picking Paper' do
    get_started
    expect(page).to have_button('Paper')
  end

  scenario 'Picking Scissors' do
    get_started
    expect(page).to have_button('Scissors')
  end

end


feature 'Making a Choice' do
  scenario 'Picking Rock' do
    get_started
    expect(page).to have_link("Rock")
  end

  scenario 'Picking Paper' do
    get_started
    expect(page).to have_link("Paper")
  end

  scenario 'Picking Scissors' do
    get_started
    expect(page).to have_link("Scissors")
  end

end

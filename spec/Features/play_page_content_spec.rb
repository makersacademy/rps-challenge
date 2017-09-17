feature 'play page links' do

  scenario 'has correct buttons' do
    give_name_heraldo
    expect(page).to have_selector("input[type=submit][value='Rock']")
    expect(page).to have_selector("input[type=submit][value='Paper']")
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end

end

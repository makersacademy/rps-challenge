feature 'RPSSL option' do

  scenario 'rpssl given as option' do
    visit '/'
    expect(page).to have_selector("input[type=submit][value='RPSSL']")
  end

  scenario 'rpssl rules explained' do
    visit '/'
    click_button 'RPSSL'
    expect(page).to have_content("The rules are:")
  end

end

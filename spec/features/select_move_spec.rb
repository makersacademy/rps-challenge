feature 'selecting player move options' do

  scenario 'displays rock move' do
    visit ('/')
    click_button 'Submit'
    expect(page.find_button("rock"))
  end

  scenario 'displays paper move' do
    visit ('/')
    click_button 'Submit'
    expect(page.find_button("paper"))
  end

  scenario 'displays scissors move' do
    visit ('/')
    click_button 'Submit'
    expect(page.find_button("scissors"))
  end

end

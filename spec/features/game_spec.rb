feature "should have options to click" do

  scenario "can select rock" do
    visit('/')
    fill_in('name', with: 'Kim')
    click_button('Submit')
    expect(page.has_button?('Rock')).to be_truthy
  end

  scenario "can select paper" do
    visit('/')
    fill_in('name', with: 'Kim')
    click_button('Submit')
    expect(page.has_button?('Paper')).to be_truthy
  end

  scenario "can select scissors" do
    visit('/')
    fill_in('name', with: 'Kim')
    click_button('Submit')
    expect(page.has_button?('Scissors')).to be_truthy
  end

end

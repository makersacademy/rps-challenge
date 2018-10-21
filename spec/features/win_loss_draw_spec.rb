feature 'shows win, loss or draw' do

  before(:each) do
    sign_in
  end

  scenario "before user selection" do
    result = find_by_id('result')
    expect(result).to have_text ""
  end

  scenario "after user selection" do
    click_button 'paper'
    result = find_by_id('result')
    expect(result).to have_text
  end

end

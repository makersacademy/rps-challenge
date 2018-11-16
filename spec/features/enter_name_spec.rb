feature 'enter name' do

  scenario 'enter name, click submit and see name on next page' do
    visit '/'
    fill_in :name, with: 'Dana'
    click_button "Let's Play!"
  end
end

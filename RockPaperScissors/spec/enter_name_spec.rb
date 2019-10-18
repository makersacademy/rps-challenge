feature 'entering name'  do
  scenario 'Enter Player name' do
    visit '/'
    fill_in :name, with: 'John'
    click_on 'Submit'
  end
end

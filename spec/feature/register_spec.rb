require './spec/spec_helper.rb'

feature 'regestering name' do
  scenario 'register and see name' do
    visit '/'
    fill_in 'name', with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Mike'
  end
end
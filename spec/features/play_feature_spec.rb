require_relative 'web_helpers'

feature 'Play Game' do
  scenario 'Clicking Play to start RPS' do
    register
    fill_in :p1_pick, with: 'Rock'
    click_button 'Enter'
    expect(page).to have_content "Tinda: Rock"
      
  end
    
end

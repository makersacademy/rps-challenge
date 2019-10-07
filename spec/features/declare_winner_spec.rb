feature 'Tells if you won or lost' do
  scenario 'declares winner' do
    visit('/')
    fill_in :name, with: 'James'
    click_button 'Lets Play!'
    page.select("Rock", :from => "weapon")
    click_button 'Do Battle!'
    expect(page).to have_content 'YOU'
  end
end

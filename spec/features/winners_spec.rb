feature 'Display winner' do
  scenario 'display correct winner' do
    visit('/')
    select 'Rock', :from => "weapon_choice"
    allow_any_instance_of(RockPaperScissors).to receive(:computer_choice).and_return("Paper")
    click_button 'Play'
    expect(page).to have_content 'Computer Wins'
  end
end

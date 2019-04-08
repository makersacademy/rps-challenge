feature 'Display winner' do
  scenario 'computer wins' do
    visit('/')
    select 'Rock', :from => "weapon_choice"
    allow_any_instance_of(Randomiser).to receive(:computer_choice).and_return("Paper")
    click_button 'Play'
    expect(page).to have_content 'Computer Wins'
  end

  scenario 'user wins' do
    visit('/')
    select 'Scissors', :from => "weapon_choice"
    allow_any_instance_of(Randomiser).to receive(:computer_choice).and_return("Paper")
    click_button 'Play'
    expect(page).to have_content 'You Win'
  end
end

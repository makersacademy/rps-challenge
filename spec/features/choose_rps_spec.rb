feature 'player selection of Rock, Paper or Stone' do
  scenario 'player selects Rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content 'Coco: rock'
  end
end

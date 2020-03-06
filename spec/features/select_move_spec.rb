feature 'selecting player move options' do

  scenario 'displays rock move' do
    expect(page.find_button('Rock'))
  end

  scenario 'displays paper move' do
    expect(page.find_button('Paper'))
  end

  scenario 'displays scissors move' do
    expect(page.find_button('Scissors'))
  end

end

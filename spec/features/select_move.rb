feature 'selecting player move options' do

  scenario 'displays rock move' do
    expect(page.find_link('Rock'))
  end

  scenario 'displays paper move' do
    expect(page.find_link('Paper'))
  end

  scenario 'displays scissors move' do
    expect(page.find_link('Scissors'))
  end

end

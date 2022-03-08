feature 'submitting names' do
  scenario 'submit name text' do
    visit '/'
    expect(page).to have_content('Player 1')
    expect(page).to have_content('Player 2')
    expect(page).to have_field('player-1')
    expect(page).to have_field('player-2')
    expect(page).to have_button('Play')
  end
end
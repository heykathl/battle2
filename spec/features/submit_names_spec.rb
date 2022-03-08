feature 'submitting names' do

  scenario 'view configuration' do
    visit '/'
    expect(page).to have_content('Player 1')
    expect(page).to have_content('Player 2')
    expect(page).to have_field('player_1')
    expect(page).to have_field('player_2')
    expect(page).to have_button('Play')
  end

  scenario 'page should submit names' do
    visit '/'
    fill_in("player_1", with: "Lats")
    fill_in("player_2", with: "Cats")
    click_button 'Play'
    expect(page).to have_content('Lats vs Cats')
  end
end
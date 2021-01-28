feature 'view_diary_entries' do

  scenario 'Returns a lits of diary entries' do
    visit('/diary')

    expect(page).to have_content("I went on a walk today")
    expect(page).to have_content("I played Civ 6 for an hour today")
  end

end
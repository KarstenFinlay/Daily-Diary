require 'diary'

describe Diary do

  describe '#.all' do
    it 'prints all saved bookmarks' do
      diary_entries = Diary.all

      expect(diary_entries).to include "I went on a walk today"
      expect(diary_entries).to include "I played Civ 6 for an hour today"
    end
  end

end
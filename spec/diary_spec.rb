require 'diary'

describe Diary do

  describe '#.all' do
    it 'prints all saved bookmarks' do
      diary = Diary.all

      expect(diary).to include(
        "I went on a walk today",
        "I played Civ 6 for an hour today"
        )
    end
  end

end
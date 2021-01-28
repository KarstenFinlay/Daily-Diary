require 'pg'

class Diary
  def self.all
    connection = PG.connect(dbname: 'diary_manager')
    result = connection.exec("SELECT * FROM diary_entries")
    result.map { |diary_entry| diary_entry['entry'] }
  end
end
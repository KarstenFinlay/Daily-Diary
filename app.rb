require 'sinatra'
require 'sinatra/reloader'

class DiaryManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  #For testing purposes only, was testing infrastructure
  get '/' do
    'Hello world!'
  end

  get '/diary' do
    @diary_entries = Diary.all
    erb(:diary)
  end

  run! if app_file == $0

end
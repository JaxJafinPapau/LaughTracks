class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(name: params[:comedian][:name],
                    age: params[:comedian][:age],
                    birthplace: params[:comedian][:birthplace])
    redirect '/comedians'
  end
end

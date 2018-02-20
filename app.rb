require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pname = params[:pirate][:name]
      @pweight = params[:pirate][:weight]
      @pheight = params[:pirate][:height]

      @fname = params[:pirate][:ships][0][:name]
      @ftype = params[:pirate][:ships][0][:type]
      @fbooty = params[:pirate][:ships][0][:booty]

      @sname = params[:pirate][:ships][1][:name]
      @stype = params[:pirate][:ships][1][:type]
      @sbooty = params[:pirate][:ships][1][:booty]
      erb :"pirates/show"
    end

  end
end

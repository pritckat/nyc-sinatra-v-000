class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(:name => params[:figure_name])
    erb :'figures/show'
  end
end

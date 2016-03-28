class PagesController < ApplicationController

  expose(:musics){ Music.all }
end

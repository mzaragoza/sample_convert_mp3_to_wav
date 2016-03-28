class MusicsController < ApplicationController
  expose(:musics){ Music.all }
  expose(:music, attributes: :music_params)

  def create
    if music.save
      redirect_to root_path
    else
      render :new
    end
  end

  def make_mp3
    music.convert_to_mp3
    redirect_to root_path
  end

  private
  def music_params
    params.require(:music).permit(
      :name,
      :song,
    )
  end

end


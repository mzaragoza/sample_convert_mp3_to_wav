class Music < ActiveRecord::Base
  require 'dragonfly'
  extend Dragonfly::Model
  dragonfly_accessor :song
  mount_uploader :song


  def convert_to_mp3
    wav = Dragonfly.app.fetch_url(song_url)
    #debugger
    # this should really be moved to a worker
    #mp3 = wav.to_mp3  # to_mp3 is a custom processor
    #uid = mp3.store   # store in the configured datastore, e.g. S3

    #url = Dragonfly.app.remote_url_for(uid)  # ===> http://s3.amazon.com/my-stuff/lard.mp3
  end
end


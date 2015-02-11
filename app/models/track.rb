class Track < ActiveRecord::Base
belongs_to :user
has_many :comments

mount_uploader :song, SongUploader 
end

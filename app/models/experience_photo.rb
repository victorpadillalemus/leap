class ExperiencePhoto < ApplicationRecord
  belongs_to :experience
  mount_uploader :photo, PhotoUploader
end

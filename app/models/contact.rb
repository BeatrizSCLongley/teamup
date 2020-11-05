class Contact < ApplicationRecord
  validates :name, :email, presence: true
  validates :title, inclusion: { in: ["General", "neuro-selfie™", "teamup∞™ 180", "teamup∞™ 360", "teamup∞™ for teams"], message: "Title should be one of the options given" }
end

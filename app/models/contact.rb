class Contact < ApplicationRecord
  validates :name, :email, :title, presence: true
  validates :title, inclusion: { in: %w(neuroselfie teamup180 teamup360 teamupteams general), message: "Title should be one of the options given" }
end

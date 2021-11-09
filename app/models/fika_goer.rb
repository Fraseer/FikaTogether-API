class FikaGoer < ApplicationRecord
  validates_presence_of :name, :email, :start_date
  validates_inclusion_of :management, in: [true, false]

  has_and_belongs_to_many :fikas, join_table: 'fikas_fika_goers'
end
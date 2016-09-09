class Booklist < ActiveRecord::Base
  validates :name, presence: true ,uniqueness: true
  validates :writer, presence: true ,length:{ maximum: 15}
end

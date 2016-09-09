class Booklist < ActiveRecord::Base
  validates :name, presence: true ,uniqueness: true
  validates :writer, presence: true ,length:{ maximum: 15}

  # validate :error_sample
  #
  # def error_sample
  #   if name.blank?
  #     errors[:base] << 'タイトルを入力してください。'
  #   end
  #
  #   if writer.blank?
  #     errors[:base] << '著者を入力してください。'
  #   end
  # end

end

class Phrase < ApplicationRecord

  def self.next(ids)
    where.not(id: ids).first
  end
end

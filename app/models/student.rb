class Student < ApplicationRecord
  has_many   :attendances
  belongs_to :Sem
  validates_presence_of :name
  validates_uniqueness_of :name, :scope=>:is_deleted,:case_sensitive => false, :if=> 'is_deleted == false'

  def self.search(search)
    where("admission_no LIKE ?", "%#{search}%")
  end

end

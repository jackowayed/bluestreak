class Issue < ActiveRecord::Base
  has_many :articles

  def to_s
    self.school_year.to_s+"-"+(self.school_year+1).to_s+":"+self.number.to_s
  end
end

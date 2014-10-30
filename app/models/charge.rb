class Charge < ActiveRecord::Base
  belongs_to :repair
  belongs_to :engine

  belongs_to :branch, :class_name => 'Company' 


  def undo_charge
    self.charge_flg = false
    self.charge_date = nil
    self.charge_comment = nil
    self.save!
  end

end

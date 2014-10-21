class Sendingplace < ActiveRecord::Base
  
  belongs_to :branch, :class_name => 'Company'
  
  def branch_name
    if self.branch.nil?
      return ''
    end
    self.branch.name
  end
    
end

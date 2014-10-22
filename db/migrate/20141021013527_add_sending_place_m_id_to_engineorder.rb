class AddSendingPlaceMIdToEngineorder < ActiveRecord::Migration
  def change
    add_column :engineorders, :sending_place_m_id, :integer
  end
end

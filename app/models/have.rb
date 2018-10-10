class Have < Ownership
  def self.ranking
    self.group(:item_id).order('count_item_id').limit(10).count(:item_id)
  end
end

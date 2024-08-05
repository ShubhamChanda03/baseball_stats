class Player < ApplicationRecord
  before_save :set_default_ops

  private

  def set_default_ops
    self.ops = 0.0 if ops.nil? || ops.nan?
  end
end

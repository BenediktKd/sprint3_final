# frozen_string_literal: true

class AddPivotToMessage < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :pivot, foreign_key: true
  end
end

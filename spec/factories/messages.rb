# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    message { 'string' }
    reserva_id { 1 }

    association :pivot
  end
end

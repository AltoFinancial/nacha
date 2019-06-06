defmodule Nacha.Records.BatchControl do
  @moduledoc """
  A struct containing data for a batch control record.
  """

  @required [
    :record_type_code,
    :service_class_code,
    :entry_count,
    :entry_hash,
    :total_debits,
    :total_credits,
    :company_id,
    :odfi_id,
    :batch_number
  ]

  use Nacha.Record,
    fields: [
      {:record_type_code, :number, 1, 8},
      {:service_class_code, :string, 3},
      {:entry_count, :number, 6, 0},
      {:entry_hash, :number, 10},
      {:total_debits, :number, 12},
      {:total_credits, :number, 12},
      {:company_id, :string, 10},
      {:message_auth_code, :string, 19},
      {:reserved, :string, 6},
      {:odfi_id, :string, 8},
      {:batch_number, :number, 7}
    ]
end

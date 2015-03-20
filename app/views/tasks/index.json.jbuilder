json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :status, :user_id, :task_date, :task_time, :address, :city, :zip, :long_description, :short_description
  json.url task_url(task, format: :json)
end

json.extract! task, :id, :task, :status, :due, :created_at, :updated_at
json.url task_url(task, format: :json)

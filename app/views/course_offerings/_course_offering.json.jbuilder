json.extract! course_offering, :id, :course_code, :title, :year, :semester, :created_at, :updated_at
json.url course_offering_url(course_offering, format: :json)
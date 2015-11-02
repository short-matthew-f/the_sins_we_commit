json.transgression do
  json.id @transgression.id
  json.sin_type @transgression.sin_type
  json.description @transgression.description
  json.authored_at time_ago_in_words(@transgression.created_at) + " ago"
  json.confessions []
end

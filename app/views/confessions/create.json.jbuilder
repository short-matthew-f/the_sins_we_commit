json.transgression_id @confession.transgression_id

json.confession do
  json.id @confession.id
  json.description @confession.description
  json.occurred_at time_ago_in_words(@confession.created_at) + " ago"
end

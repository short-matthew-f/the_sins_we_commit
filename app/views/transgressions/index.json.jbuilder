json.sinner current_user.email

json.transgressions(@transgressions) do |trans|

  json.id trans.id
  json.sin_type trans.sin_type
  json.description trans.description
  json.authored_at time_ago_in_words(trans.created_at) + " ago"

  json.confessions(trans.confessions) do |conf|
    json.id conf.id
    json.description conf.description
    json.occurred_at time_ago_in_words(conf.created_at) + " ago"
  end
end

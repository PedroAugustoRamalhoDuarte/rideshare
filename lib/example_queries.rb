
# Query trips for a rider
#
rider_id = 1

Trip.completed.
  includes(:driver, {trip_request: :rider}).
  joins(trip_request: :rider).
  where(users: {id: rider_id})
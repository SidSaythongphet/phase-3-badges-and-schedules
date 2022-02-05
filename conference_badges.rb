def badge_maker name
    "Hello, my name is #{ name }."
end

def batch_badge_creator arr
    arr.map { |name| badge_maker name}
end

def assign_rooms arr
    arr.map.with_index { |name, index| "Hello, #{ name }! You'll be assigned to room #{ index + 1 }!" }
end

def printer attendees
    badge_message = batch_badge_creator(attendees).each { |badge| puts badge }
    room_message = assign_rooms(attendees).each { |room| puts room }
    badge_message + room_message
end

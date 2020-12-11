# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    messages = []
    attendees.each do |name|
        messages.push(badge_maker(name))
    end
    return messages
end

def assign_rooms(attendees)
    room_assignments = []
    attendees.each.with_index do |attendee, room|
        room_assignments.push("Hello, #{attendee}! You'll be assigned to room #{room + 1}!")
    end
    return room_assignments
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    assignments = assign_rooms(attendees)
    badges.each do |badge|
        puts badge
    end
    assignments.each do |assignment|
        puts assignment
    end
end
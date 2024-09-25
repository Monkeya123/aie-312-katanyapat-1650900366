# create a new Class, User, that has the following attributes:
class User
    attr_reader :name, :email, :rooms
    def initialize(name,email,password) 
# - name
        @name = name
# - email
        @email = email
# - password
        @password = password
    end
end
# create a new Class, Room, that has the following attributes:
class Room
    attr_reader :name, :description, :users
    def initialize(name ,description ,users)
# - name
        @name = name
# - description
        @description = description
# - users
        @users = users
    end
end

# create a new Class, Message, that has the following attributes:
class Message
    attr_reader :user, :room, :content
    def initialize(users ,room ,content)
# - user
        @user = user
# - room
        @room = room
# - content
        @content = content
    end
end

# add a method to user so, user can enter to a room
class User
    attr_reader :name, :email, :rooms
    
    def initialize(name,email,password) 
        @name = name
        @email = email
        @password = password
        @rooms = []
    end
    
    def enter_room(room)
        @rooms.push(room)
    end
end
user = User.new("Bob","bob@email.com","1234")
user.enter_room("talktalk")
puts "#{user.name} in rooms: #{user.room}"




# add a method to user so, user can send a message to a room
class User
    attr_reader :name, :email, :rooms
    
    def initialize(name,email,password) 
        @name = name
        @email = email
        @password = password
        @rooms = []
    end
    
    def enter_room(room)
        @rooms.push(room)
    end

    def ackowledge_message(room, message)
        puts "Acknowledged message from #{@name} :'#{message}'"
    end

    def ackowledge_message(room, message)
        puts "#{@name} acknowledged message :'#{message}'"
    end
end

user2 = User.new("Grab","grab@email.com","1234")
user2.enter_room("lets talk")
user2.send_message("lets talk","Hello")
user2.ackowledge_message("lets talk","Hello")



# add a method to a room, so it can broadcast a message to all users
class Room
    attr_reader :name, :description, :users
    def initialize(name ,description ,users)
        @name = name
        @description = description
        @users = users
    end

    def broadcast(message)
        @users.each do |user|
            puts "#{user} received message in #{@name}: '#{message}'"
        end
    end
end

room = Room.new("All Chat", "test chat", ['Bob','Grab'])
# room.broadcast(message)
room.broadcast("Hello!")


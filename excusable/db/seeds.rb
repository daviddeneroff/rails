
User.create({username: "david", password:"123", password_confirmation: "123"})
User.create({username: "mike", password: "123", password_confirmation: "123"})
User.create({username: "john", password: "123", password_confirmation: "123"})

Excuse.create({title: "train delays", content:"ahhh the train is stuck. will be 10 mins late", user_id: 1})
Excuse.create({title: "snow", content: "snow is making traffic crazy...ill do the best i can", user_id: 2})
Excuse.create({title: "thirsty", content: "had to grab a smoothie. will be there when i get there", user_id: 3})

Comment.create({content: "nice one man", user_id: 1, excuse_id: 2})
Comment.create({content: "no way", user_id: 2, excuse_id: 3})
Comment.create({content: "that counts", user_id: 3, excuse_id: 1})

Vote.create({excuse_id: 1, user_id: 3})
Vote.create({excuse_id: 2, user_id: 1})
Vote.create({excuse_id: 3, user_id: 2})
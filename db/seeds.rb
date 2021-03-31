john = User.create!(
  email: "john.doe@example.com",
  first_name: "John",
  last_name: "Doe"
)

jane = User.create!(
  email: "jane.doe@example.com",
  first_name: "Jane",
  last_name: "Doe"
)

Item.create!(
  [
    {
      title: "---",
      description: "---",
      user: john,
      image_url: "---"
    },
    {
      title: "---",
      description: "---",
      user: john,
      image_url: "---"
    },
    {
      title: "---",
      description: "---",
      user: jane,
      image_url: "---"
    },
    {
      title: "---",
      description: "---",
      user: jane,
      image_url: "---"
    }
  ]
)

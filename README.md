Rails Quest

A text-game engine built in Rails.

-Sanjay Patel

#Game Structure

Games have Locations and Characters
Locations have Snippets - text-based events that can be chained together.
Locations may also have Items that are not yet picked up by Characters.

Characters have Items and are in a Location

Games 
  Locations
    Snippets
      Snippets (parent/children)
  Chacters
    Items


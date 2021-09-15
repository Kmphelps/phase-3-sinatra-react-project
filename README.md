# volunteerback

Pitch: Volunteer Work Manager (name tbd) is a website that allows users to input volunteer work opportunity information which is then displayed on the website in categories. Users can select an opportunity and submit their name and contact information in order to sign up. 

(Create - post) Form: Create a volunteer work opportunity with title, category, date/time, location, description, maybe an image
  - An opportunity can be tagged with a Category, so that each opportunity belongs to a category and each category has many opportunities.
  - Each category would have many volunteers
  - Each category would have many opportunities

(Read - get)
  - Display cards for each opportunity (reads a list of all volunteer work opportunities)

(Update - patch)
  - Update an individual opportunity by adding your name and contact info to volunteer for the volunteer work opportunity. After submission of contact info, hide       the card from the user (but still available upon refresh)

(Delete)
  - Stretch goal - Delete an opportunity based on a set limit of number of people who can volunteer for the opportunity - could also involve an Admin role who is     able to delete or it could automatically delete based on the max limit of volunteers allowed


  # Volunteer Work Database

  ## API

  ### GET /opportunities

  Returns a list of all opportunities.

  ### GET /opportunity/:id

  Returns an opportunity with the given id.

  ### POST /opportunity

  Creates a new opportunity.

  ### GET /volunteers

  Returns a list of all volunteers.

  ### GET /volunteer/:id

  Returns a volunteer with the given id.

  ### POST /volunteer

  Creates a new volunteer.

  ### GET /categories

  Returns a list of all categories.

  ### GET /category/:id

  Returns a category with the given id.

  ### POST /category

  Creates a new category

  ## Models
  
  An Opportunity belongs to a Volunteer, and an Opportunity belongs to a Category
  A Volunteer has many Opportunities, and a Volunteer has many Categories through Opportunities
  A Category has many Opportunities, and a Category has many Volunteers through Opportunities

  ` Volunteer -< Opportunity >- Category `

  ### Volunteer

  | Field | Type   |
  | ----- | -----  | 
  | name  | string |
  | phone | string |


  ### Category

  | Field | Type   |
  | ----- | -----  | 
  | name  | string |

  
  ### Opportunity

  | Field        | Type   |
  | -----        | -----  | 
  | title        | string | 
  | org_name     | string |
  | date         | string | 
  | time         | string | 
  | location     | string | 
  | description  | string | 
  | img          | string | 
  | volunteer_id | integer| 
  | category_id  | integer| 


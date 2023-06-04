# E-Commerce Product Reviews

This is a simple application that manages product reviews in an e-commerce system. It includes three models: User, Review, and Product. Users can leave reviews for products, and products can have multiple reviews.

### Setup

1. Clone the repository to your local machine.
git clone <repository_url>

2. Change into the project directory.
cd ruby_sql_code_challenge_2

3. Install the required dependencies using Bundler.
bundle install

4. Set up the database by running the migrations.
rake db:migrate

5. (Optional) If you want to populate the database with some sample data, run the seed file.
rake db:seed

## Usage

To use the application, you can open the Rails console by running:
### rake console
This will open an interactive console where you can interact with the models and test their methods.

## User Model
The User model represents a user in the e-commerce system. It has the following associations and methods:

### Associations
- has_many :reviews: Specifies that a user can have multiple reviews.
- has_many :products, through: :reviews: Specifies that a user can have multiple products through their reviews.

### Methods
- reviews: Returns all the reviews left by the user.
- products: Returns all the products the user has reviewed.
- favorite_product: Returns the product with the highest-rated review by the user.
- remove_reviews(product): Removes all reviews left by the user for a specific product.

## Product Model
The Product model represents a product in the e-commerce system. It has the following associations and methods:

### Associations
- has_many :reviews: Specifies that a product can have multiple reviews.
- has_many :users, through: :reviews: Specifies that a product can have multiple users through their reviews.

### Methods
- reviews: Returns all the reviews for the product.
- users: Returns all the users who have reviewed the product.
- average_rating: Calculates and returns the average rating of the product based on its reviews.
- leave_review(user, star_rating, comment): Creates a new review for the product with the given user, star rating, and comment.
- print_all_reviews: Prints all the reviews for the product, including the user's name, star rating, and comment.


## Review Model
The Review model represents a review left by a user for a product. It has the following associations:

### Associations
- belongs_to :user: Specifies that a review belongs to a user.
- belongs_to :product: Specifies that a review belongs to a product.

### Methods
- user: Returns the user who left the review.
- product: Returns the product that the review is for.

## Authors

Dennis Mutuma Marangu.

## License
This project is licensed under the MIT License.

## Conclusion
This application provides a basic implementation for managing product reviews in an e-commerce system. It allows users to leave reviews for products, and provides methods to retrieve and manipulate the data related to reviews, users, and products. Feel free to explore and expand upon this codebase to meet your specific requirements.

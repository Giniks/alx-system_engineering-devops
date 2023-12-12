# Reddit API Project

This project includes functions to interact with the Reddit API.

## Table of Contents

1. [Number of Subscribers](#number-of-subscribers)
2. [Top Ten](#top-ten)
3. [Recurse It!](#recurse-it)
4. [Acknowledgement](#acknowledgement)
5. [Author](#author)

## Number of Subscribers

This function queries the Reddit API and returns the number of subscribers for a given subreddit. If the subreddit is invalid, it returns 0.

```python
## Example
number_of_subscribers('programming')

Top Ten
This function queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit. If the subreddit is invalid, it prints None.

python
Copy code
# Example
top_ten('programming')
Recurse It!
This recursive function queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the subreddit, it returns None

# Example
result = recurse('programming')
print(len(result))


## Acknowledgement

All thanks to ALX community

## Author

Ginika Elizabeth

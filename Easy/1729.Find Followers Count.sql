/*
Table: Followers

+-------------+------+
| Column Name | Type |
+-------------+------+
| user_id     | int  |
| follower_id | int  |
+-------------+------+

(user_id, follower_id) is the primary key.

Each row means follower_id follows user_id.

Write a query to return the number of followers for each user.
Return result ordered by user_id ascending.

Example:

Input:
Followers table
+---------+-------------+
| user_id | follower_id |
+---------+-------------+
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |
+---------+-------------+

Output:
+---------+----------------+
| user_id | followers_count|
+---------+----------------+
| 0       | 1              |
| 1       | 1              |
| 2       | 2              |
+---------+----------------+
*/


select user_id,count(*) as followers_count
from Followers
group by user_id
order by user_id;
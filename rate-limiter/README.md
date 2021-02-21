# NODE JS Rate - limitter

## Overview:

Rate limiting system to prevent DDOS attack, use for both local and distributed system


## Algorithm:

Using Leaky bucket:
- User's IP will be collected and stored in cache with the most recent time they requested the information
- Each cache is defined by a set of array where it will contains the most recent number of requests.
- If the new request did not meet the limit, the oldest time record will be remove
- Else It will trigger the 503 or 493 response.

## Distributed system

### Synchronize policies 
Use when you want a global config for your cluster
Each user will get exactly one node

### Message broadcasting
Distributed cache - Already implemented
Random leader election
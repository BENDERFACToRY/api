# Vault API

The vault API contains all relational data about the media. It does not store the media itself

## Models:
- User
- Media
- Like
- Tag
- Comment

--- later
- Project

### User
User table will store identifiable information for recognizing the user.
It has a reference to liked media

### Media
The media is stored on IPFS, so it has a reference to the IPFS location
Media can be formatted in multiple formats (ogg, mp3, flac for audio)
Media has metadata attached to it, bpm, bitrate, etc

### Like
Likes happen on Media
Make sure it's simple aggregating the amount of likes on a resource

### Tag
Tags are attached on Media, in order to filter and find similar tracks, and categorize them.
Tags will be part of a voting system, so they receive a weight.
Every time a user tags a resource, it adds some weight to the tag. When sufficient weight is on a tag it will be visible

### Comment
Comments happen on media, they optionally reference a timestamp/timespan


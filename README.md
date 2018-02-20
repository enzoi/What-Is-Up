# What is up App
> Share location-based ideas, events, instant photos around users.

## Features

- [ ] Explore events around your location on Google Maps
- [ ] Save favorite places - home, work, neighborhood, etc - or users to keep posted
- [ ] Search postings using event types
- [ ] Take a photo or select a photo from library to post with message
- [ ] Anonymous user setting for casual interacations among users

## Requirements

- iOS 10.3+
- Xcode 8.3
- Cocoapods version 1.21 or later

## Installation

```
$ git clone https://github.com/enzoi/WhatIsUp.git <YourProjectName>
$ cd <YourProjectName>
$ pod install
$ open <YourProjectName>.xcworkspace
```

To add this app to a Firebase project, use the bundleID from the Xcode project. Download the generated GoogleService-Info.plist file, and copy it to the root directory of the sample you wish to run. Replace Google Maps API key with your own API key in Appdelegate 

```
// AppDelegate.swift

GMSServices.provideAPIKey(<YourGoogleMapsAPIKey>)
```

## Dependencies

* Google Maps SDKs
* Firebase Auth, Database, Storage, and Cloud Messaging (Push Notification)

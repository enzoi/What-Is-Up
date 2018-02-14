# What is up App
> Share location-based ideas, events, instant photos around users.

## Features

* Explore events around your location
* Save favorite places - home, work, neighborhood, etc - to keep posted
* Search postings using event types
* Take an instant photo using camera to share
* Anonymous user setting to generate causual interacations

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

To add this app to a Firebase project, use the bundleID from the Xcode project. Download the generated GoogleService-Info.plist file, and copy it to the root directory of the sample you wish to run.

## Dependencies

* Google Maps SDKs
* Firebase Auth, Database, Storage, and Cloud Messaging (Push Notification)

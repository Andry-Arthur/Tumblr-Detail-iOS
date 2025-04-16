# Project 6 - Tumblr Photo Viewer

Submitted by: **Andry Rakotonjanabelo**

**Tumblr Photo Viewer** is an app that fetches and displays photo posts from a Tumblr blog. The app shows a list of posts, and when a user selects a post, the app navigates to a detail view with more information, including an image and summary.

Time spent: **4** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] Setup navigation to the Detail Screen
- [x] Created the Detail View UI
- [x] Add the ability to pass data to the Detail View Controller
- [x] Made personal finishing touches to the UI

The following **additional** features are implemented:

- [x] Stylish UI for the Detail View with text and image styling
- [x] Fade-in effect for the image once it loads for a smoother user experience
- [x] Custom styling for the summary label with padding and spacing for better readability

## Video Walkthrough

[Guide](https://www.youtube.com/watch?v=GA92eKlYio4).

## Notes

- One of the main challenges encountered was passing data from the `ViewController` to the `DetailViewController`. After some troubleshooting, I was able to successfully implement the segue and handle the data passing properly.
- Styling the `UILabel` with padding required a bit of work. I implemented the `NSAttributedString` solution for this, which added spacing and indentation to the text.
- Ensuring the image loads smoothly with a fade-in effect using the Nuke library helped improve the user experience.

## License

    Copyright 2025 Andry

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

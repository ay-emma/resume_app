# resumeapp

A resume app that shows my educational background, skills and experience, with support for dark mode.

## Getting Started

This project has only two pages, first being the home-page with description and social handles, and the second page shows the details of each sections.
The details page has being abstracted in such a way that it support the three(3) different sections.

## Codebase description

The app is devided into 3 different dart files. main.dart file is the entry point for the app. The rest are under the src folder.
Under the src/theme folder the app theme describes the colors fonts and style for dark and light mode.
The home page use CustomScrollView to describe the list of scrollable content. It has three tappable buttons that leads to the details page.
The theme toggle buttons switch between themes.

The details page shows the descriptions of each sections.

## App design

Figma was used to design the app. [Link](https://www.figma.com/file/TcoawrWQXFvYypfEFUtIKt/Resume-App?node-id=18%3A106)

## Dependencies used

Flutter riverpod is the only dependency used for state management. cupertino_icons comes by default with flutter.


- [Appetize.io link](https://appetize.io/app/vninirhvsv2cmj37vbnoxjr5gy?device=pixel4&osVersion=11.0&scale=75)
- [Fall-back link to install](https://drive.google.com/file/d/1UqgjfxtgiH2kqC2lkmLI6n_k4-NMwe2W/view?usp=sharing)

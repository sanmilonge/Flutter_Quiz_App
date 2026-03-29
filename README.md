# Quiz App

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-4CAF50)](https://flutter.dev/multi-platform)
[![CI](https://github.com/sanmilonge/Flutter_Quiz_App/actions/workflows/flutter_ci.yml/badge.svg)](https://github.com/sanmilonge/Flutter_Quiz_App/actions/workflows/flutter_ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A clean and interactive Flutter quiz application that tests Flutter fundamentals.

## Overview

This app presents a short set of multiple-choice questions about Flutter. Users can:

- Start the quiz from a landing screen
- Answer questions one by one with shuffled answer options
- View a final score summary
- Retry the quiz instantly

## Features

- Gradient themed UI
- Landing page with call-to-action
- Shuffled answers for each question
- Results screen with total correct answers
- Scrollable quiz summary
- Simple and readable code structure for learning

## Built With

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)
- [google_fonts](https://pub.dev/packages/google_fonts)

## Project Structure

```text
lib/
	main.dart
	main_page.dart
	landing_page.dart
	questions_screen.dart
	results_screen.dart
	quiz_summary.dart
	answer_button.dart
	custom_text.dart
	data/
		questions.dart
	models/
		questions_model.dart
assets/
	images/
		quiz-logo.png
	icons/
```

## Screenshots

Add app screenshots in `docs/screenshots/` with these filenames:

- `landing.png`
- `question.png`
- `results.png`

Once added, they will render in this section:

![Landing Screen](docs/screenshots/landing.png)
![Question Screen](docs/screenshots/question.png)
![Results Screen](docs/screenshots/results.png)

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- A device/emulator or browser target

### Installation

1. Clone the repository:

```bash
git clone <your-repo-url>
cd quiz
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

To run on a specific platform, for example web:

```bash
flutter run -d chrome
```

## How It Works

1. The app starts on the landing screen.
2. Pressing Start Quiz switches to the questions screen.
3. Each selected answer is stored until all questions are answered.
4. The results screen calculates and displays the score.
5. Retry resets state and starts from question one.

## Configuration Notes

- Quiz data is currently hardcoded in `lib/data/questions.dart`.
- The app icon is configured via `flutter_launcher_icons` using `assets/icons/icon.png`.

## Useful Commands

```bash
flutter analyze
flutter test
```

## Roadmap Ideas

- Add category and difficulty selection
- Persist high scores locally
- Add timer-based quiz mode
- Load questions from an API or JSON file
- Improve accessibility and animations

## License

Distributed under the MIT License. See `LICENSE` for details.

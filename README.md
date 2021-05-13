# GitHub Commits History

[![style: lint][lint_badge]][lint_package_link]

A GitHub commits history viewer made with Flutter by [mrverdant13][mrverdant13_link].

Created with [mrverdant13's Flutter project template][mrverdant13_flutter_project_template], which is based on the [Very Good CLI][very_good_cli_link].

---

# Features

## Platform support

|                                           | Android | iOS | MacOS | Linux | Windows | Web |
| :---------------------------------------- | :-----: | :-: | :---: | :---: | :-----: | :-: |
| Flutter-level flavors                     |   ✔️    | ✔️  |  ✔️   |  ✔️   |   ✔️    | ✔️  |
| Native flavors                            |   ✔️    | ❌  |  ❌   |  ❌   |   ❌    | ❌  |
| Different app icon per flavor             |   ✔️    | ❌  |  ❌   |  ❌   |   ❌    | ❌  |
| Different app splash per flavor           |   ✔️    | ❌  |  ❌   |  ❌   |   ❌    | ❌  |
| Different app splash per dark/light theme |   ✔️    | ❌  |  ❌   |  ❌   |   ❌    | ❌  |
| App signing pre-configuration             |   ✔️    | ❌  |  ❌   |  ❌   |   ❌    | ❌  |

## Project-wide features

- CI with GitHub Actions (includes code formatting, code analysis and testing)
- GitHub issue templates
- GitHub pull request template
- Strong lint rules

---

# Prerequisites

## Required

- [Flutter][flutter_link] 2 to build and test the project.

## Optional

- [Chocolatey][chocolatey_link] on Windows to install and use `lcov` utils.
- [remove_from_coverage][remove_from_coverage_link] package to ignore generated files in coverage info.

---

# App flavors

## Flutter-level flavors

This project supports 3 Flutter-level flavors that can be used directly with the launch configuration in Visual Studio Code or by executing one of the following commands:

```sh
# Development
$ flutter run --target lib/main_dev.dart

# Staging
$ flutter run --target lib/main_stg.dart

# Production
$ flutter run --target lib/main_stg.dart
```

> **Note:** The target path separator (`\` or `/`) might change according to the OS.

## Native flavors

This project supports 3 native flavors (**Android only**) that can be used directly with the launch configuration in Visual Studio Code or by executing one of the following commands:

```sh
# Development
$ flutter run --flavor dev --target lib/main_dev.dart

# Staging
$ flutter run --flavor stg --target lib/main_stg.dart

# Production
$ flutter run --flavor stg --target lib/main_stg.dart
```

> **Note:** The target path separator (`\` or `/`) might change according to the OS.

---

# Testing

To run all unit and widget tests, execute the following command:

```sh
$ flutter test --coverage -r expanded --test-randomize-ordering-seed random
```

To remove generated files from coverage info, install the [remove_from_coverage package][remove_from_coverage_link] and run one of the following commands:

```sh
# If pub global scripts are on your path
remove_from_coverage -f coverage/lcov.info -r "\.freezed\.dart$","\.g\.dart$","\.gr\.dart$"

# Otherwise (might change depending on pub setup)
pub global run remove_from_coverage:remove_from_coverage -f coverage/lcov.info -r "\.freezed\.dart$","\.g\.dart$","\.gr\.dart$"
```

To generate coverage report within the `coverage` folder, run one of the following commands according to your OS:

```sh
# Linux/MacOS
# Generate coverage report
$ genhtml coverage/lcov.info -o coverage/

# Windows
# Install `lcov` utils (Chocolatey is prerequisite)
$ choco install lcov
# Generate coverage report (might change depending on Chocolatey setup)
$ perl C:\ProgramData\chocolatey\lib\lcov\tools\bin\genhtml -o coverage\html coverage\lcov.info
```

To open the generated coverage report, run one of the following commands according to your OS:

```sh
# Linux/MacOS
# Generate coverage report
$ open coverage/index.html

# Windows
$ start coverage/index.html
```

---

# Issues

Submit a [new issue report][new_project_issues_link] if you find any bug or have any suggestion.

[chocolatey_link]: https://chocolatey.org/
[flutter_link]: https://flutter.dev/
[lint_badge]: https://img.shields.io/badge/style-lint-4BC0F5.svg
[lint_package_link]: https://pub.dev/packages/lint
[mrverdant13_link]: https://github.com/mrverdant13/
[mrverdant13_flutter_project_template]: https://github.com/mrverdant13/flutter_app_template
[new_project_issues_link]: https://github.com/mrverdant13/git_history/issues/new/choose
[remove_from_coverage_link]: https://pub.dev/packages/remove_from_coverage
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli

```

```

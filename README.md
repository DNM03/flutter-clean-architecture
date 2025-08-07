# Flutter Clean Architecture Boilerplate

A structured foundation for building scalable and maintainable Flutter applications following Clean Architecture principles.

## Overview

This boilerplate provides a well-organized project structure that separates concerns into distinct layers according to Clean Architecture. It's designed to help you create Flutter applications that are:

- **Maintainable**: Clear separation of concerns makes the codebase easier to maintain
- **Testable**: Properly isolated components that can be tested independently
- **Scalable**: Easily add new features without disrupting existing functionality
- **Framework Independent**: Core business logic remains independent of UI and external frameworks

## Project Structure

```
lib/
├── app/                # App-level configurations and entry point
│   ├── app.dart        # App widget and initial setup
│   ├── app_constants.dart
│   ├── app_pref.dart   # App preferences
│   ├── dependency_injector.dart # Dependency injection setup
│   └── functions.dart  # Common app functions
├── core/               # Core functionality and utilities
│   └── config/         # Configuration settings
├── data/               # Data layer
│   ├── data_source/    # Remote and local data sources
│   ├── network/        # Network services and API clients
│   ├── repository/     # Repository implementations
│   ├── requests/       # Request models/DTOs
│   └── responses/      # Response models/DTOs
├── domain/             # Domain layer (business logic)
│   ├── entities/       # Business models/entities
│   ├── repository/     # Repository interfaces
│   └── usecases/       # Application business logic
└── presentation/       # Presentation layer (UI)
    ├── base/           # Base classes for UI components
    ├── view/           # Screens and pages
    └── widgets/        # Reusable UI components
```

## Architecture

This project implements Clean Architecture with three main layers:

### 1. Presentation Layer
- Contains all UI components (screens, widgets)
- Manages state using your preferred state management solution
- Depends on the Domain layer but not the Data layer

### 2. Domain Layer
- Contains business logic and rules
- Defines entities that represent your business objects
- Defines repository interfaces that the Data layer will implement
- Contains use cases that orchestrate the flow of data
- Independent of any framework or external dependency

### 3. Data Layer
- Implements repository interfaces from the Domain layer
- Manages data sources (local storage, APIs, etc.)
- Handles data transformation between Domain entities and Data models
- Depends on the Domain layer for repository interfaces and entities

## Getting Started

1. Clone this repository:
   ```
   git clone https://github.com/DNM03/flutter-clean-architecture.git
   ```

2. Install dependencies:
   ```
   cd flutter_clean_architecture
   flutter pub get
   ```

3. Run the application:
   ```
   flutter run
   ```

## How to Use This Boilerplate

### Creating a New Feature

1. Define entities in the `domain/entities` directory
2. Define repository interfaces in `domain/repository`
3. Create use cases in `domain/usecases`
4. Implement repositories in `data/repository`
5. Create data sources in `data/data_source`
6. Create UI components in `presentation/view` and `presentation/widgets`
7. Register dependencies in `app/dependency_injector.dart`

### Best Practices

- Keep the Domain layer independent of external frameworks
- Use dependency injection to provide implementations at runtime
- Follow the Single Responsibility Principle
- Write tests for each layer independently
- Use meaningful naming conventions

## Dependencies

This boilerplate is designed to work with common Flutter packages such as:

- **State Management**: BLoC, Provider, Riverpod, or GetX
- **Dependency Injection**: GetIt, injectable, or Provider
- **Networking**: Dio or http
- **Local Storage**: SharedPreferences, Hive, or SQLite

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
